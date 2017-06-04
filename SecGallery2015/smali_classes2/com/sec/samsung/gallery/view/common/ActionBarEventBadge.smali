.class public Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;
.super Ljava/lang/Object;
.source "ActionBarEventBadge.java"


# static fields
.field private static final MSG_ADD_HINT_POPUP:I = 0x1

.field private static final MSG_REMOVE_HINT_POPUP:I = 0x2


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mHoverPopUpView:Landroid/view/View;

.field private mIsFinished:Z

.field private mIsLongClicked:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMenu:Landroid/view/Menu;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mVibrator:Landroid/os/Vibrator;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mIsLongClicked:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mIsFinished:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$1;-><init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mMainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActionBar:Landroid/app/ActionBar;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->addHintPopUp(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->startNotification(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->removeHintPopup()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->updateEventBadgeMenuIcon(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->updateEventBadgeBesideTitle(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mIsLongClicked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->playHaptic()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->showHintPopUp(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->doActionUp(I)V

    return-void
.end method

.method private addHintPopUp(Ljava/lang/String;II)V
    .locals 6

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mIsFinished:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f040043

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    const v3, 0x7f1200b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoRegularFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    invoke-direct {p0, p2, p3}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->getHoverLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mIsLongClicked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private doActionUp(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mIsLongClicked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mIsLongClicked:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->removeHintPopup()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1051"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mIsFinished:Z

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->startNotification(I)V

    goto :goto_0
.end method

.method private getHoverLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method

.method private isNeedEventBadge()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private playHaptic()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private removeHintPopup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mWindowManager:Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mHoverPopUpView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private setEventBadgeViewListener(Landroid/view/View;I)V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$3;-><init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$4;-><init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$5;

    invoke-direct {v0, p0, p2}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$5;-><init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$6;

    invoke-direct {v0, p0, p2}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$6;-><init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private setPaddingTitleBadge(Landroid/view/View;I)V
    .locals 8

    const/4 v7, 0x0

    const v4, 0x7f120043

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f12007d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b029f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0307

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b030b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->ApplyShowButtonShapesForGrace:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0202cb

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0372

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v1, v4

    :goto_2
    if-lez p2, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setMinimumWidth(I)V

    invoke-virtual {v3, v1, v7, v2, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_2
    const v4, 0x7f02007b

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const v4, 0x7f020072

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v1, v7, v1, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_0
.end method

.method private showHintPopUp(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    new-array v2, v3, [I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/os/Message;->arg1:I

    aget v3, v2, v5

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b015b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private startNotification(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$8;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$8;-><init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateEventBadgeBesideTitle(Landroid/view/View;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v2, 0x7f12007d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f12007e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->setPaddingTitleBadge(Landroid/view/View;I)V

    if-lez p2, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance v2, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$7;

    invoke-direct {v2, p0, p2}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$7;-><init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateEventBadgeMenuIcon(Landroid/view/View;I)V
    .locals 12

    const v8, 0x7f120288

    const/16 v11, 0x8

    const/4 v10, 0x0

    const v7, 0x7f12007d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mMenu:Landroid/view/Menu;

    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->getActionViewFromItem(Landroid/view/Menu;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mMenu:Landroid/view/Menu;

    invoke-static {v7, v8, v10}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a03cb

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v7, 0x7f1200dc

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f1200db

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b030b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    if-lez p2, :cond_3

    invoke-virtual {v3, v10, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledShowButtonShapes:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f1200d9

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200de

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-direct {p0, v1, p2}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->setEventBadgeViewListener(Landroid/view/View;I)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3, v10, v4, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public setMenu(Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mMenu:Landroid/view/Menu;

    return-void
.end method

.method public updateEventBadge(I)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->isNeedEventBadge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge$2;-><init>(Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
