.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
.super Ljava/lang/Object;
.source "ToolkitHandle.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;
    }
.end annotation


# static fields
.field public static final CLICK_CRITERION:I = 0x32

.field public static final HANDLE_IDLE_OPACITY:F = 0.6f

.field public static final NO_ANIM:I = 0x14d

.field public static final SHOW_FIRST_ANIM:I = 0x6f

.field public static final SHOW_IMMEDIATE_ANIM:I = 0xde


# instance fields
.field private final HANDLE_HEIGHT:I

.field private final HANDLE_HEIGHT_HALF:I

.field private final HANDLE_WIDTH_OFFSET:I

.field private final TAG:Ljava/lang/String;

.field private dp13:F

.field private mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

.field private mFloatingSide:I

.field mHandleAutoTransparencyChange:Ljava/lang/Runnable;

.field private mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

.field private mHandleLine:I

.field private mHandleParams:Landroid/view/WindowManager$LayoutParams;

.field private mHandlePosition:F

.field mHandlePositionReporter:Ljava/lang/Runnable;

.field mHandleThrowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mIgnoreTouch:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsIntroShown:Z

.field private mIsViewAdded:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field private mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

.field private mMoveSoFarFromTouchPoint:Z

.field private mMovingPosition:Landroid/graphics/Point;

.field private mOrientation:I

.field private mResolution:Landroid/graphics/Point;

.field private mStatusBarOffset:I

.field private mThemeContext:Landroid/content/Context;

.field private mToolsMoveCnt:I

.field private mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

.field private mTouchPosition:Landroid/graphics/Point;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIgnoreTouch:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMoveSoFarFromTouchPoint:Z

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIsIntroShown:Z

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mToolsMoveCnt:I

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandlePositionReporter:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleThrowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iput-object p3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT_HALF:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    const-wide v2, 0x4041800000000000L    # 35.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mInflater:Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTouchPosition:Landroid/graphics/Point;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    invoke-direct {v0}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isShownGameToolsIntro(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIsIntroShown:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->dp13:F

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT_HALF:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIsIntroShown:Z

    return p1
.end method

.method private saveHandlePosition(II)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->refinePosition(II)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandlePosition:F

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandlePosition:F

    invoke-static {v0, v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setToolkitHandlePosition(Landroid/content/Context;Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    invoke-static {v0, v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setToolkitHandleSide(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addViewToWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ToolkitHandle : addViewToWindow"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->isViewAdded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "Toolkit Handle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setViewAdded(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public autoTransparencyChange(I)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    int-to-long v4, p1

    invoke-static {v1, v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method checkSideChange(II)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    if-ne v1, v0, :cond_1

    mul-int/lit8 v1, p1, 0x2

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->saveHandlePosition(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    invoke-interface {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;->onChangeSide(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    mul-int/lit8 v1, p1, 0x2

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_2

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->saveHandlePosition(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    invoke-interface {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;->onChangeSide(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableTouchListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public enableTouchListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getCenterPosition()Landroid/graphics/Point;
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public declared-synchronized getFloatingSide()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getHandleDestination()Landroid/graphics/PointF;
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isStatusBarOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getStatusBarHeight()I

    move-result v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHandlePosition()Landroid/graphics/Point;

    move-result-object v0

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT_HALF:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandlePosition:F

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT_HALF:I

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public getHandleHeight()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    goto :goto_0
.end method

.method getHandleLine(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    sub-int v0, v1, v2

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->dp13:F

    float-to-int v1, v1

    rsub-int/lit8 v0, v1, 0x0

    goto :goto_0
.end method

.method getHandlePosition()Landroid/graphics/Point;
    .locals 4

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHandleLine(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleLine:I

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleLine:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandlePosition:F

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mOrientation:I

    return v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public declared-synchronized getToolsMoveCnt()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mToolsMoveCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hideHandle(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HideHandle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideHandleTo(Landroid/graphics/Point;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "HideHandleTo "

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->addViewToWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$4;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xf6

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v3, "x"

    new-array v4, v6, [I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getCenterPosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    aput v5, v4, v7

    iget v5, p1, Landroid/graphics/Point;->x:I

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v7

    const-string/jumbo v3, "y"

    new-array v4, v6, [I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getCenterPosition()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    aput v5, v4, v7

    iget v5, p1, Landroid/graphics/Point;->y:I

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v8

    const-string/jumbo v3, "scale"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$6;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V

    const-wide/16 v4, 0xa

    invoke-static {v1, v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :array_0
    .array-data 4
        0x3f553f7d    # 0.833f
        0x3ebfec57    # 0.37485f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public hideMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->removeViewFromWindow()V

    :cond_0
    return-void
.end method

.method public inflate()V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_handle:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_GAME_TOOLS:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->inflate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setParams()V

    return-void
.end method

.method public declared-synchronized isViewAdded()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIsViewAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIgnoreTouch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIgnoreTouch:Z

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTouchPosition:Landroid/graphics/Point;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTouchPosition:Landroid/graphics/Point;

    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMoveSoFarFromTouchPoint:Z

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIsViewAdded:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/GTHandler;->removeCallbacks(ILjava/lang/Runnable;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandleScale(FI)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    invoke-interface {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;->onTouchDownHandle()V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTouchPosition:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->reset(FF)V

    goto/16 :goto_0

    :pswitch_3
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIgnoreTouch:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    if-nez v2, :cond_6

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    :goto_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isStatusBarOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getStatusBarHeight()I

    move-result v1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT_HALF:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT_HALF:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setPosition(IIZ)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->reportHandlePosition(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V

    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMoveSoFarFromTouchPoint:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTouchPosition:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDistanceBetweenPoint(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMoveSoFarFromTouchPoint:Z

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto :goto_2

    :pswitch_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIgnoreTouch:Z

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIsViewAdded:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    if-nez v2, :cond_7

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    invoke-interface {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;->onTouchUpHandle()V

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMoveSoFarFromTouchPoint:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->hide(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    invoke-interface {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;->onClickHandle()V

    goto/16 :goto_0

    :cond_9
    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$8;->$SwitchMap$com$samsung$android$game$gametools$floatingui$toolkit$ToolkitTopMenu$Section:[I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->getCurrencSection()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->hide(Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    invoke-interface {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;->onRemoveHandleByUser()V

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mTopMenu:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->getHideDestination()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->hideHandleTo(Landroid/graphics/Point;)V

    goto :goto_3

    :pswitch_6
    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mToolsMoveCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mToolsMoveCnt:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->saveHandlePosition(II)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->checkSideChange(II)Z

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->putPoint(II)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->startHandlePositionReporting()V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleThrowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandleScale(FI)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHandleDestination()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->startValueAnimation(Landroid/graphics/PointF;)V

    goto :goto_3

    :cond_b
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMoveSoFarFromTouchPoint:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    invoke-interface {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;->onClickHandle()V

    goto/16 :goto_0

    :cond_c
    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mToolsMoveCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mToolsMoveCnt:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->saveHandlePosition(II)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->checkSideChange(II)Z

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMovingPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->putPoint(II)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->startHandlePositionReporting()V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleThrowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandleScale(FI)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mMotionFilter:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHandleDestination()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->startValueAnimation(Landroid/graphics/PointF;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public refinePosition(II)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    if-gez p2, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mStatusBarOffset:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mStatusBarOffset:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_1
    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    neg-int v1, v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_2

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    neg-int v1, v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_WIDTH_OFFSET:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    :cond_3
    return-object v0
.end method

.method public declared-synchronized removeViewFromWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->isViewAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setViewAdded(Z)V

    :cond_0
    const-string/jumbo v1, "ToolkitHandle : removeViewFromWindow"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setViewAdded(Z)V

    const-string/jumbo v1, "ToolkitHandle : removeViewFromWindow exception"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setCenterPosition(II)V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, p2, v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setPosition(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized setFloatingSide(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHandleEventListener(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    return-void
.end method

.method setHandlePosition()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setHandlePosition"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getHandleLine(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleLine:I

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleLine:I

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandlePosition:F

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setPosition(IIZ)V

    return-void
.end method

.method setHandleScale(FI)V
    .locals 5

    const v4, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    const v0, 0x3f555555

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT_HALF:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    if-eqz p2, :cond_3

    cmpl-float v1, p1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT_HALF:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_3
    cmpl-float v1, p1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    mul-float v2, v3, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    mul-float v2, v3, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mOrientation:I

    return-void
.end method

.method public setParams()V
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->HANDLE_HEIGHT:I

    const/16 v3, 0x7d2

    const v4, 0x1000628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public setPosition(IIZ)V
    .locals 4

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->refinePosition(II)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->updateView()V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setResolution(Landroid/graphics/Point;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mResolution:Landroid/graphics/Point;

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mStatusBarOffset:I

    return-void
.end method

.method public declared-synchronized setToolsMoveCnt(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mToolsMoveCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setViewAdded(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIsViewAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showHandle(I)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-boolean v5, v5, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ShowHandle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/model/SettingData;->getToolkitHandlePosition(Landroid/content/Context;Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandlePosition:F

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/model/SettingData;->getToolkitHandleSide(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setResolution()V

    iget-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mIsIntroShown:Z

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$7;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V

    const-wide/16 v6, 0x3e8

    invoke-static {v4, v5, v6, v7}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleEventListener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mFloatingSide:I

    invoke-interface {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$HandleEventListener;->onChangeSide(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    const/16 v5, 0x6f

    if-ne p1, v5, :cond_4

    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "ShowHandle : SHOW_FIRST_ANIM"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->stopAutoTransparencyChange()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->addViewToWindow()V

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandleScale(FI)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->enableTouchListener()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandlePosition()V

    const/16 v5, 0x3e8

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->autoTransparencyChange(I)V

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isClose1stBubble(Landroid/content/Context;)Z

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isClose2ndBubble(Landroid/content/Context;)Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dslr - showHandle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isMove1stHandle(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    if-nez v1, :cond_6

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showBubbleGuideDelayed(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_3
    move v3, v4

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mDrawer is null"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v5, 0xde

    if-ne p1, v5, :cond_5

    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "ShowHandle : SHOW_IMMEDIATE_ANIM"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->stopAutoTransparencyChange()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->addViewToWindow()V

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandleScale(FI)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->enableTouchListener()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandlePosition()V

    const/16 v5, 0xa7

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->autoTransparencyChange(I)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "ShowHandle : NO_ANIM"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->stopAutoTransparencyChange()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->addViewToWindow()V

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandleScale(FI)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->enableTouchListener()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandlePosition()V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mView:Landroid/view/View;

    const v6, 0x3f19999a    # 0.6f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setHandleScale(FI)V

    goto/16 :goto_2

    :cond_6
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isMove1stHandle(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showBubbleGuideDelayed(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3
.end method

.method startHandlePositionReporting()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandlePositionReporter:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAutoTransparencyChange()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleAutoTransparencyChange:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/GTHandler;->removeCallbacks(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method stopHandlePositionReporting()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandlePositionReporter:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/GTHandler;->removeCallbacks(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateView()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mThemeContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->mHandleParams:Landroid/view/WindowManager$LayoutParams;

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
