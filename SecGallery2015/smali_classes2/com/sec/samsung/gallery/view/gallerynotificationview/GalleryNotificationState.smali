.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "GalleryNotificationState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# static fields
.field private static final FEATURE_USE_NAVIGATION_BAR:Z

.field private static final FEATURE_USE_NOTIFICATION_TAB:Z

.field private static final KEY_LAST_TAB_POSITION:Ljava/lang/String; = "key_last_tab_position"

.field private static final MSG_NOTIFICATION_DELAYED_TIME_MS:J = 0x1f4L

.field private static final MSG_NOTIFY_NOTIFICATION_SUCCESS_DC:I = 0x0

.field public static final REQUEST_AGIF_EDITOR:I = 0xf02

.field public static final REQUEST_COLLAGE_MAKER:I = 0xf01

.field private static final TAG:Ljava/lang/String; = "NotificationViewState"


# instance fields
.field private mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mHandler:Landroid/os/Handler;

.field private mIsNeedToRestoreFullScreen:Z

.field private mLastTabPosition:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mParentView:Landroid/view/View;

.field private mPreviousViewMode:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mTabLayout:Landroid/support/design/widget/TabLayout;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationTab:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NOTIFICATION_TAB:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NAVIGATION_BAR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mIsNeedToRestoreFullScreen:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mLastTabPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->createNlgRequest()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mLastTabPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private checkRequiredPermissions([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createNlgRequest()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a07c8

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "Notification"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void
.end method

.method private finishCurrentViewState()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mPreviousViewMode:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private getActionbarOverFlow()Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "action_bar"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0266

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-nez v3, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :cond_1
    return-object v2
.end method

.method private initView()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040075

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/ActionBarManager;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    const v2, 0x7f120120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    const v2, 0x7f12011f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mTabLayout:Landroid/support/design/widget/TabLayout;

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TabLayout;->setLayoutDirection(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "last_tab_position_in_notification"

    invoke-static {v1, v2, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mLastTabPosition:I

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->onCreate()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$4;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.gallery3d.eventshare.UPDATE_TAB_BADGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private sendCommandToFramgent(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->setSelected(I)V

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getContentFragment()Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleCommandForDCWithOrdinal(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getContentFragment()Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->handleCommandForDC(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setHandler()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$1;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method private updateMarginTopForStatusBar()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    const v3, 0x7f12011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private updateNavigationBarLayout()V
    .locals 7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isDeskTopMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v2

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    invoke-virtual {v6, v3, v4, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Notification"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "007"

    return-object v0
.end method

.method protected onBackPressed()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1091"

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishWithCoupledActivity(Landroid/app/Activity;)V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->onBackPressedAt(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getTotalBadgeCount()I

    move-result v1

    :cond_1
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->setTotalEventBadgeCount(Landroid/content/Context;I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->finishCurrentViewState()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v4, "GalleryNotificationState onCreate Start"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v1, :cond_0

    const-string/jumbo v1, "NotificationViewState"

    const-string/jumbo v2, "mActivity is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    new-instance v1, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v4, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mPreviousViewMode:Ljava/lang/Class;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->initView()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "newContent"

    const-string/jumbo v4, "tabname"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mLastTabPosition:I

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-eq v1, p0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mIsNeedToRestoreFullScreen:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getSystemUiVisibility()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFWStatusBarInOpenTheme:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLightStatusBar(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarUiVisibility(ZI)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->updateMarginTopForStatusBar()V

    :cond_4
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->setHandler()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/GalleryNotificationDCHandler;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/GalleryNotificationDCHandler;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    new-instance v1, Lcom/samsung/android/devicecog/gallery/touchevent/GalleryNotificationStateDCTouchEvent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/GalleryNotificationStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    :cond_5
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "GalleryNotificationState onCreate End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto/16 :goto_1
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    const/16 v4, 0x400

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "GalleryNotificationState onDestroy Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->onDestroy()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "last_tab_position_in_notification"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mIsNeedToRestoreFullScreen:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "GalleryNotificationState onDestroy End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->updateNavigationBarLayout()V

    :cond_0
    return-void
.end method

.method public onMWLayoutChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->updateMarginTopForStatusBar()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "GalleryNotificationState onPause Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->onPause()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->unregisterReceiver()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "GalleryNotificationState onPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/ActivityState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->onBackPressed()V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onRestoreInstanceState(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_last_tab_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mLastTabPosition:I

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v4, "Gallery_Performance"

    const-string/jumbo v5, "GalleryNotificationState onResume Start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->getSAScreenId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryNotificationInterface;->checkSharedAlbumExistInGalleryNotification(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x6f

    invoke-direct {p0, v2, v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->showPermissionRequestDialog([Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "channel_needto_show_pregrant_popup"

    invoke-static {v4, v5, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "channel_needto_show_pregrant_popup"

    invoke-static {v4, v5, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a033c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v5, v6}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mParentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAllObject()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->onResume()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getUpImageButton(Landroid/app/Activity;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "action_bar"

    const-string/jumbo v7, "id"

    const-string/jumbo v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    new-instance v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$2;

    invoke-direct {v4, p0, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$2;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-boolean v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    iget v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mLastTabPosition:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->setSelected(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mLastTabPosition:I

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    new-instance v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$3;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$3;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->updateBadge(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->registerReceiver()V

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousOverflowView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->getActionbarOverFlow()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousOverflowView(Landroid/view/View;)V

    :cond_3
    sget-boolean v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->updateNavigationBarLayout()V

    :cond_4
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    const-string/jumbo v4, "Gallery_Performance"

    const-string/jumbo v5, "GalleryNotificationState onResume End"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_last_tab_position"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mViewPagerAdapter:Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getContentFragment()Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;->onStateResult()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xf01
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewInitialize()V
    .locals 0

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_GALLERY_NOTIFICATION_CONTROL:I

    if-ne v1, v6, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v5, v2, v6

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x2

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v5, v4, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->sendCommandToFramgent(Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    if-ne v1, v6, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    check-cast v6, Lcom/samsung/android/devicecog/gallery/touchevent/GalleryNotificationStateDCTouchEvent;

    iget v7, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mLastTabPosition:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/devicecog/gallery/touchevent/GalleryNotificationStateDCTouchEvent;->setCurrent(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateDualScreenFocus(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->updateDualScreenFocus(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    sput-object v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    :cond_0
    return-void
.end method
