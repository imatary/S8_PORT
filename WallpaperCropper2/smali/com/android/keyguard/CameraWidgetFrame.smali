.class public Lcom/android/keyguard/CameraWidgetFrame;
.super Lcom/android/keyguard/KeyguardWidgetFrame;
.source "Unknown"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CameraWidgetFrame$Callbacks;,
        Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final RECOVERY_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final WIDGET_ANIMATION_DURATION:I = 0xfa

.field private static final WIDGET_WAIT_DURATION:I = 0x190


# instance fields
.field private mActive:Z

.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

.field private mDown:Z

.field private mFakeNavBar:Landroid/view/View;

.field private mFullscreenPreview:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mInsets:Landroid/graphics/Rect;

.field private mLaunchCameraStart:J

.field private final mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

.field private final mRecoverRunnable:Ljava/lang/Runnable;

.field private final mRenderRunnable:Ljava/lang/Runnable;

.field private final mRenderedSize:Landroid/graphics/Point;

.field private final mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

.field private final mTmpLoc:[I

.field private final mTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private final mTransitionToCameraRunnable:Ljava/lang/Runnable;

.field private mTransitioning:Z

.field private mUseFastTransition:Z

.field private final mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CameraWidgetFrame$1;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CameraWidgetFrame$2;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CameraWidgetFrame$3;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CameraWidgetFrame$4;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CameraWidgetFrame$5;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CameraWidgetFrame$6;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CameraWidgetFrame$7;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    iput-object p3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    iput-object p4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-direct {v0, p1}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v0, p5}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V

    sget v0, Lcom/android/keyguard/R$string;->keyguard_accessibility_camera:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CameraWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new CameraWidgetFrame instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->transitionToCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/CameraWidgetFrame;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->onSecureCameraActivityStarted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/CameraWidgetFrame;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/CameraWidgetFrame;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/CameraWidgetFrame;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/CameraWidgetFrame;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/CameraWidgetFrame;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/CameraWidgetFrame;)Lcom/android/keyguard/KeyguardActivityLauncher;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->recover()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->render()V

    return-void
.end method

.method private cancelTransitionToCamera()V
    .locals 4

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;)Lcom/android/keyguard/CameraWidgetFrame;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardActivityLauncher;->getCameraWidgetInfo()Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {p0, v4}, Lcom/android/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/CameraWidgetFrame;-><init>(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V

    return-object v0

    :cond_2
    return-object v0

    :cond_3
    return-object v0
.end method

.method private enableWindowExitAnimation(Z)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_1

    :goto_0
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-ne v1, v3, :cond_2

    :goto_1
    return-void

    :cond_0
    return-void

    :cond_1
    sget v1, Lcom/android/keyguard/R$style;->Animation_LockScreen:I

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting windowAnimations to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private static getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .locals 1

    iget v0, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    if-gtz v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/keyguard/CameraWidgetFrame;->inflateWidgetView(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private static inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "inflateGenericWidgetView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/keyguard/R$drawable;->ic_lockscreen_camera:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-object v0
.end method

.method private static inflateWidgetView(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inflateWidgetView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-object v1

    :cond_0
    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error creating camera widget view"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private instanceId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onCameraLaunched()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedSuccessfully()V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method private onKeyguardVisibilityChanged(Z)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyguardVisibilityChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iput-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    cmp-long v0, v4, v8

    if-gtz v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    sub-long/2addr v4, v6

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Camera took %sms to launch"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v8, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->onCameraLaunched()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private onSecureCameraActivityStarted()V
    .locals 4

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSecureCameraActivityStarted at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private recover()V
    .locals 4

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recovering at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedUnsuccessfully()V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method private render()V
    .locals 13

    const/4 v12, 0x2

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v5, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v7, v2, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-eq v0, v7, :cond_2

    :cond_0
    if-nez v7, :cond_3

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, v8, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Already rendered at size=%sx%s %d%%"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v3}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleX()F

    move-result v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v7, v0, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v8, v0, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->height:I

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingTop()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v5, v0

    int-to-float v6, v7

    div-float/2addr v5, v6

    int-to-float v6, v2

    int-to-float v9, v8

    div-float/2addr v6, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    int-to-float v5, v7

    mul-float/2addr v5, v9

    float-to-int v5, v5

    int-to-float v6, v8

    mul-float/2addr v6, v9

    float-to-int v10, v6

    if-lt v5, v0, :cond_4

    move v6, v1

    :goto_0
    if-lt v10, v2, :cond_5

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v2}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getLayoutDirection()I

    move-result v2

    if-eq v2, v4, :cond_6

    move v2, v3

    :goto_2
    iget-object v10, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    if-nez v2, :cond_7

    move v5, v1

    :goto_3
    invoke-virtual {v10, v5}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setPivotX(F)V

    iget-object v5, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setPivotY(F)V

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v1, v9}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v1, v9}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setScaleY(F)V

    iget-object v5, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    if-nez v2, :cond_8

    move v1, v4

    :goto_4
    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-virtual {v5, v1}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Point;->set(II)V

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Rendered camera widget size=%sx%s %d%% instance=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v3}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleX()F

    move-result v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    move v6, v0

    goto :goto_0

    :cond_5
    sub-int v0, v2, v10

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iget v5, v5, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    int-to-float v5, v5

    goto :goto_3

    :cond_8
    const/4 v1, -0x1

    goto :goto_4
.end method

.method private rescheduleTransitionToCamera()V
    .locals 4

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rescheduleTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mUseFastTransition:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x190

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    iput-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iput-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private transitionToCamera()V
    .locals 13

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {v0, v3}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v3}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleY()F

    move-result v3

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    aget v3, v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v4, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "root = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-eqz v4, :cond_4

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v6}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleY()F

    move-result v6

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v8, 0xfa

    invoke-virtual {v3, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    if-lez v5, :cond_5

    :cond_2
    if-gtz v5, :cond_3

    move v1, v2

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    if-eqz v3, :cond_6

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleX(F)V

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onLaunchingCamera()V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    invoke-static {v4, v6}, Lcom/android/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-direct {v6, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    if-gtz v7, :cond_2

    goto :goto_3

    :cond_6
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v8, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_7

    move v6, v7

    :goto_4
    if-nez v1, :cond_8

    const/4 v3, -0x1

    move v4, v3

    :goto_5
    if-nez v1, :cond_9

    const/16 v3, 0x75

    :goto_6
    invoke-direct {v9, v6, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    int-to-float v3, v5

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    int-to-float v3, v7

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_1

    :cond_7
    const/4 v3, -0x1

    move v6, v3

    goto :goto_4

    :cond_8
    move v4, v5

    goto :goto_5

    :cond_9
    const/16 v3, 0x57

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onActive(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    goto :goto_0
.end method

.method public onBouncerShowing(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->transitionToCamera()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetachedFromWindow: instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onFocusLost()V
    .locals 4

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusLost at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    invoke-super {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->onFocusLost()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    const/4 v6, -0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSizeChanged new=%sx%s old=%sx%s at %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p3, :cond_1

    :cond_0
    if-ne p2, p4, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardWidgetFrame;->onSizeChanged(IIII)V

    return-void

    :cond_1
    if-lez p3, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iput v6, v1, Landroid/graphics/Point;->y:I

    iput v6, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_3
    if-gtz p4, :cond_2

    goto :goto_0
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CameraWidgetFrame;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    aget v2, v2, v0

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    sget-object v1, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUserInteraction eaten: below widget"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-object v1, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUserInteraction eaten: mTransitioning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-nez v0, :cond_4

    :goto_1
    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUserInteraction observed, not eaten"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    goto :goto_1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInsets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    return-void
.end method

.method public setUseFastTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mUseFastTransition:Z

    return-void
.end method
