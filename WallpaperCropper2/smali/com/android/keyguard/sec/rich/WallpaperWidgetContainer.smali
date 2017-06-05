.class public Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
.super Landroid/widget/FrameLayout;
.source "Unknown"


# static fields
.field private static final COLLAPSED:I = 0x2

.field private static final EXPANDED:I = 0x0

.field private static final EXPANDING:I = 0x1

.field private static final INTENT_WALLPAPER_NEXT_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.next_wallpaper_changing"

.field private static final INTENT_WALLPAPER_PINUP_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.wallpaper_pinup"

.field private static final INTENT_WALLPAPER_UPDATE_ACTION:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.wallpaper_changing"

.field private static final MORE_CLOSE_IMAGE:I

.field private static final MORE_OPEN_IMAGE:I

.field private static final MSG_COLLAPSED:I = 0x3ea

.field private static final MSG_EXPANDED:I = 0x3e9

.field private static final MSG_EXPANDING:I = 0x3e8

.field private static final MSG_NEXT:I = 0x3ec

.field private static final MSG_PINUP:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "WallpaperWidgetContainer"


# instance fields
.field private mBackgroundAnim:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

.field private mMoreButton:Landroid/widget/ImageView;

.field private mNextButton:Landroid/view/View;

.field private mPinButton:Landroid/widget/ImageView;

.field private mPinUpState:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mQueueImg:Landroid/view/View;

.field private mQueueLayout:Landroid/view/ViewGroup;

.field private mShouldShowAttributionInfoView:Z

.field private mState:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetItems:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_more_close:I

    sput v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    sget v0, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_more_open:I

    sput v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->MORE_OPEN_IMAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mShouldShowAttributionInfoView:Z

    new-instance v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$3;-><init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;-><init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setVisibilityView(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->startBackgroundAnim(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->startRemoteAnimation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setPinUpState(Z)V

    return-void
.end method

.method private calculateDstPosition(F)F
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownY:F

    sub-float v0, p1, v0

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v1

    cmpg-float v2, v0, v3

    if-gez v2, :cond_0

    return v3

    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private createMoreButton()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createWidgetItem()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->createMoreButton()V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$layout;->sec_wallpaper_widget_background:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$layout;->sec_wallpaper_widget_remote:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$id;->pin_button:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$id;->next_button:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$id;->menu_queue:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$id;->queue_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$1;-><init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$2;-><init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setPinUpState(Z)V

    return-void
.end method

.method private getMaxPosition()F
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->getMoreImageSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->wallpaper_widget_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v0, v1, v0

    int-to-float v0, v0

    return v0
.end method

.method private getMoreImageSize()I
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method private relayoutParam(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->wallpaper_widget_width_include_ripple:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->getMoreImageSize()I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->requestLayout()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->wallpaper_widget_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private setBackgroundVisibility(I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$id;->wallpaper_widget_background:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setMoreButtonVisibility(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->MORE_CLOSE_IMAGE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->MORE_OPEN_IMAGE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private setPinUpState(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    sget v2, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_pinup_open:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setWidgetEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    sget v2, Lcom/android/keyguard/R$drawable;->lock_my_interest_menu_pinned_open:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private setRemoteButtonVisibility(I)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setVisibilityView(I)V
    .locals 1

    iput p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setMoreButtonVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setRemoteButtonVisibility(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->relayoutParam(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showSmooth(ILandroid/view/View;)V
    .locals 7

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "alpha"

    new-array v2, v2, [F

    aput v5, v2, v3

    aput v4, v2, v6

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const-string/jumbo v0, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    aput v5, v2, v6

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private startBackgroundAnim(I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/keyguard/R$id;->wallpaper_widget_background:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    if-eq p1, v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    const-string/jumbo v1, "alpha"

    new-array v2, v8, [F

    aput v4, v2, v7

    aput v6, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string/jumbo v2, "scaleY"

    new-array v3, v5, [F

    const v4, 0x3f333333    # 0.7f

    aput v4, v3, v7

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setBackgroundVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    const-string/jumbo v1, "scaleY"

    new-array v2, v5, [F

    aput v4, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueImg:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v7

    aput v6, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mBackgroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1
.end method

.method private startRemoteAnimation(I)V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setVisibilityView(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->showSmooth(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->showSmooth(ILandroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected init()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_widget_grid:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mWidgetItems:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->setContainer(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mKeyguardEffectViewController:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->shouldShowAttributionInfoView()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mShouldShowAttributionInfoView:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mShouldShowAttributionInfoView:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WallpaperWidgetContainer"

    const-string/jumbo v1, "mShouldShowAttributionInfoView() add widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->createWidgetItem()V

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setVisibilityView(I)V

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setBackgroundVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string/jumbo v0, "WallpaperWidgetContainer"

    const-string/jumbo v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->init()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/16 v5, 0x3ea

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_1

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mShouldShowAttributionInfoView:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    if-nez v1, :cond_3

    :cond_0
    :goto_1
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownY:F

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->calculateDstPosition(F)F

    move-result v0

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    div-float v1, v0, v1

    sub-float v1, v7, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    :pswitch_2
    iget v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownX:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownY:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->getMaxPosition()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mDownY:F

    sub-float/2addr v1, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mQueueLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setY(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onOutsideTouch()V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setWidgetEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mNextButton:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->mPinUpState:Z

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1
.end method
