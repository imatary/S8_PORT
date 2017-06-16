.class public Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;
.super Landroid/app/Fragment;
.source "AttachSheetFragment.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;
.implements Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;
.implements Lcom/samsung/android/sdk/rcl/RclExpansionFragment$OnExpansionStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;,
        Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_HEIGHT:I = 0xa00

.field private static final DEFAULT_MIN_HEIGHT:I = 0x300

.field public static final DE_IMAGE_CAMERA:Ljava/lang/String; = "Image_CAMERA"

.field public static final DE_IMAGE_GALLERY:Ljava/lang/String; = "Image_GALLERY"

.field private static final KEY_CURRENT_CATEGORY:Ljava/lang/String; = "current_category"

.field private static final KEY_FULL_MODE:Ljava/lang/String; = "full_mode"

.field private static final KEY_MAX_HEIGHT:Ljava/lang/String; = "max_height"

.field private static final KEY_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field public static final PHOTOEDITOR_DECORATION_FEATURE_ID:Ljava/lang/String; = "D100"

.field static final SWPIE_INFO_DEFAULT_TIME:I = 0x7d0

.field public static final TAG:Ljava/lang/String;

.field private static lastClickTime:J = 0x0L

.field private static final minClickDiff:J = 0x7d0L

.field public static sOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;


# instance fields
.field private final MY_REQUEST_PERMISSION:I

.field private attachViewTabContainer:Landroid/widget/RelativeLayout;

.field private isPermissionCameraGranted:Z

.field private isStop:Z

.field public isTabShowing:Z

.field private isVisiableHelpText:Z

.field public mAttachSheetHeight:I

.field public mAttachSheetMaxHeight:I

.field mAttachView:Landroid/widget/FrameLayout;

.field public mAttachViewCategory:I

.field mAttachViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field public mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

.field public mAttachViewTabManager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

.field public mContext:Landroid/content/Context;

.field public mCurrentOrientation:I

.field private mDialog:Landroid/app/ProgressDialog;

.field public mInitContainer:Z

.field public mIsFullMode:Z

.field public mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

.field public mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

.field mRoot:Landroid/view/View;

.field mSwipeHandler:Landroid/os/Handler;

.field public mSwipeInfoText:Landroid/widget/TextView;

.field mSwipeRun:Ljava/lang/Runnable;

.field private mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->lastClickTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->MY_REQUEST_PERMISSION:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isStop:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeRun:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isVisiableHelpText:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isVisiableHelpText:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->attachViewTabContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private checkChangeStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mIsFullMode:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->changeMode(Z)V

    :cond_0
    return-void
.end method

.method private initAttachViewPager()V
    .locals 5

    const v4, 0x7f0e00e1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "initAttachViewPager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;-><init>(Landroid/app/FragmentManager;Landroid/content/Context;Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->setExpandValue(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mRoot:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;Landroid/view/View;Landroid/support/v4/view/ViewPager;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewTabManager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->decideAttachSheetMoveArea()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewTabManager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewTabManager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->selectCameraTab()V

    :cond_1
    return-void
.end method

.method public static newInstance(IZ)Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;
    .locals 4

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v3, "newInstance()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->isMultiPickImage:Z

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-direct {v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "current_category"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public changeMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mIsFullMode:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    invoke-interface {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;->onChangedLayoutMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mIsFullMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->setMode(Z)V

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->hideHelpCamera()V

    :cond_2
    return-void
.end method

.method public decideAttachSheetMoveArea()V
    .locals 5

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v3, "decideAttachSheetMoveArea()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x300

    const/16 v1, 0x300

    const/16 v0, 0xa00

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->changeMode(Z)V

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachSheetHeight:I

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mIsFullMode:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachSheetHeight:I

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->setHeight(I)V

    :cond_1
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachSheetMaxHeight:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachSheetHeight:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachSheetMaxHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->setExpandValue(II)V

    goto :goto_0
.end method

.method public getCurrentCategory()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachSheetHeight:I

    return v0
.end method

.method hideSwipeInfo(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeRun:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeRun:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeRun:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isCameraOpening()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->isCameraOpening()Z

    move-result v0

    goto :goto_0
.end method

.method public isLandscapeFullMode()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mIsFullMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortraitFullMode()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mIsFullMode:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mCurrentOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mInitContainer:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isVisiableHelpText:Z

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->isMultiPickImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->hideHelpCamera()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mRoot:Landroid/view/View;

    const v1, 0x7f0e00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->initAttachViewPager()V

    return-void
.end method

.method public onCameraOpened(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 5

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeInfoText:Landroid/widget/TextView;

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeInfoText:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mIsFullMode:Z

    if-nez v2, :cond_0

    :cond_0
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeInfoText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getCurrentCategory()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->hideSwipeInfo(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCaptureAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClose(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;->onHideAttachSheet()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->updateExpandValueOfFragments(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    const v6, 0x7f080385

    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateFrameLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mRoot:Landroid/view/View;

    const v3, 0x7f0e00e2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f080528

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewTabManager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewTabManager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->selectCameraTab()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewTabManager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->updateLayout()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getCurrentCategory()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->hideSwipeInfo(I)V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f0e00e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->attachViewTabContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mInitContainer:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isVisiableHelpText:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mViewPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    :cond_0
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewTabManager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewTabManager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->destroyAttachViewTabManager()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewTabManager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeHandler:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mSwipeRun:Ljava/lang/Runnable;

    :cond_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->setExpansionFragments(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->destroy()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;I)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera onError error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;->onHideAttachSheet()V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/Object;Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnd() isFullMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->checkChangeStatus(Z)V

    return-void
.end method

.method public onGalleryButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 0

    return-void
.end method

.method public onGalleryButtonIsClicked(Ljava/lang/String;)V
    .locals 8

    const-string v3, "saurabh"

    const-string v4, "check"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->lastClickTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    if-eqz v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    invoke-interface {v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;->onOtherAppSelected(Landroid/content/Intent;)V

    :cond_1
    sput-wide v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->lastClickTime:J

    goto :goto_0
.end method

.method public onItemDeselected(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onItemSelected(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onMultiDeselectedItemList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onMultiSelectedItemList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureTaken(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Landroid/net/Uri;)V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    invoke-interface {v2, p2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;->onAttachCameraImageSelected(Landroid/net/Uri;)V

    move-object v1, p1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onRecordAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecordButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 0

    return-void
.end method

.method public onRecordingFinished(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 0

    return-void
.end method

.method public onRecordingStarted(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 0

    return-void
.end method

.method public onRequest(Ljava/lang/Object;Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v0, 0x1

    array-length v2, p3

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    aget v2, p3, v1

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onResult(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->isMultiPickImage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    invoke-interface {v0, p3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;->onAttachGalleryMultiImageSelected(Ljava/util/List;)V

    :goto_0
    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setExpansion(Z)Z

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->changeMode(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-interface {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;->onAttachGalleryImageSelected(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isStop:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isPermissionCameraGranted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkCameraPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isStop:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "min_height"

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachSheetHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "max_height"

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachSheetMaxHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "full_mode"

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mIsFullMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "current_category"

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectedItemCount(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;I)V
    .locals 0

    return-void
.end method

.method public onShutterButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0300a1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;->onAttachCameraShutterButtonClicked()V

    goto :goto_0
.end method

.method public onStart(Ljava/lang/Object;Z)V
    .locals 2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->hideSwipeInfo(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->showTabSpace(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isStop:Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkCameraPermission(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isPermissionCameraGranted:Z

    return-void
.end method

.method public onSwitchButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 0

    return-void
.end method

.method public onVideoTaken(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public setExpansionFragments(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->setExpansionFragments(Z)V

    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080529

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->requestLayout()V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setOnAttachInteractionListener(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    sput-object p1, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->sOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;

    return-void
.end method

.method public showPermissionDialog()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const-string v2, "android.permission.CAMERA"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$4;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
