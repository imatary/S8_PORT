.class public Lcom/sec/samsung/gallery/drawer/GalleryTab;
.super Ljava/lang/Object;
.source "GalleryTab.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/sec/samsung/gallery/drawer/GalleryTabable;


# static fields
.field public static final DEFAULT_TAB_COUNT:I = 0x3

.field private static final KEY_CHECK_MTP:Ljava/lang/String; = "key_check_mtp"

.field private static final KEY_ONLY_3GP:Ljava/lang/String; = "only3gp"

.field private static final KEY_ONLY_JPG:Ljava/lang/String; = "onlyJpg"

.field private static final KEY_SENDER_VIDEOCALL:Ljava/lang/String; = "senderIsVideoCall"

.field private static final MSG_CHECK_MTP:I = 0x0

.field private static final MSG_CONFIGURATION_CHANGED:I = 0xc

.field private static final MSG_DC_SWITCH:I = 0x8

.field private static final MSG_HIDE_TAB:I = 0x4

.field private static final MSG_INIT_TAB:I = 0x2

.field private static final MSG_MOVE_TAB:I = 0x9

.field private static final MSG_REFRESH_TAB:I = 0xb

.field private static final MSG_REQUEST_FOCUS:I = 0x7

.field private static final MSG_SET_ALPHA:I = 0x6

.field private static final MSG_SET_ENABLE:I = 0x5

.field private static final MSG_SHOW_TAB:I = 0x3

.field private static final MSG_SWITCH_TIME_VIEW:I = 0x1

.field private static final MSG_UPDATE_BOTTOM_INDICATOR:I = 0xa

.field private static final TAG:Ljava/lang/String; = "GalleryTab"

.field private static final USE_CONDENSED_TITLE:Z


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPickMode:Z

.field private final mIsTabAdded:[Z

.field private final mOnTabSpecsChangedListener:Lcom/sec/samsung/gallery/drawer/GalleryTabable$OnTabSpecsChangedListener;

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mTabCount:I

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabIndicator:Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

.field private mTabSpecsCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/drawer/StateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCondensedTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->USE_CONDENSED_TITLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsTabAdded:[Z

    new-instance v0, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab$1;-><init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/drawer/GalleryTab$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab$2;-><init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mOnTabSpecsChangedListener:Lcom/sec/samsung/gallery/drawer/GalleryTabable$OnTabSpecsChangedListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/drawer/GalleryTab;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->updateDynamicTabs(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->refreshTabInner()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->refreshLayoutParams()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->findTabIndexByPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getMTPDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/drawer/GalleryTab;Lcom/sec/samsung/gallery/drawer/StateInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getStateTitle(Lcom/sec/samsung/gallery/drawer/StateInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->selectItem(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->scrollTo(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/drawer/GalleryTab;)[Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsTabAdded:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->init()V

    return-void
.end method

.method static synthetic access$2002(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabCount:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->checkMTP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->showTabInner()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/drawer/GalleryTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->hideTabInner()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/drawer/GalleryTab;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->setEnableTabInner(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->handleDCSwitchInner(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->moveTabInner(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabIndicator:Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    return-object v0
.end method

.method private addTab(Lcom/sec/samsung/gallery/drawer/StateInfo;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getStateTitle(Lcom/sec/samsung/gallery/drawer/StateInfo;)Ljava/lang/String;

    move-result-object v3

    iget v5, p1, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabIndex:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getMTPDeviceName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsTabAdded:[Z

    iget v7, p1, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabIndex:I

    aput-boolean v9, v5, v7

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "GalleryTab"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "addTab, position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", tabIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04010e

    move-object v5, v6

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v5, 0x7f12025e

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v5, Lcom/sec/samsung/gallery/drawer/GalleryTab;->USE_CONDENSED_TITLE:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    const v5, 0x7f1201bb

    invoke-virtual {v1, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabCount:I

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->setOnGenericMotionListener(I)V

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->setOnClickListener(I)V

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->setOnKeyListener(I)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getStateTitle(Lcom/sec/samsung/gallery/drawer/StateInfo;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private checkMTP()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "mtpMode"

    invoke-static {v3, v4, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "mtpDeviceName"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private findPositionByTabIndex(I)I
    .locals 4

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/drawer/StateInfo;

    iget v1, v1, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabIndex:I

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "GalleryTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error find tab position by tab index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findTabIndexByPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    iget v0, v0, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabIndex:I

    goto :goto_0
.end method

.method private getContentType(Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "GalleryTab"

    const-string/jumbo v5, "Failed to get intent content type!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private getCurrentTag()Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->destroyedInSuggestionPickerMode()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/sec/samsung/gallery/drawer/StateInfo;->title:Ljava/lang/Integer;

    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    return-object v3

    :cond_1
    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v4, :cond_2

    sget-object v4, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v2, v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->destroyedInSuggestionPickerMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    sget-object v4, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "GalleryTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CurrentTabTagType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", is not added. Move Time tab"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    goto :goto_0

    :cond_5
    move-object v1, v3

    goto :goto_1
.end method

.method private getFilterType(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;
    .locals 2

    if-eqz p1, :cond_2

    const-string/jumbo v1, "video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "*/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE_AND_VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    goto :goto_0
.end method

.method private getFilterTypeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "image"

    goto :goto_0
.end method

.method private getFilteredSetPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/content/Intent;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {p2, p5, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFilteredSetPathTypeBit(Landroid/content/Intent;ZLandroid/content/Context;)I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {p3}, Lcom/sec/android/gallery3d/app/FilterUtils;->toFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I

    move-result v5

    invoke-static {v0, v5, p4}, Lcom/sec/android/gallery3d/app/FilterUtils;->switchFilterPath(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    move-object v3, v0

    goto :goto_0
.end method

.method private getMTPDeviceName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mtpDeviceName"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNewPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v0, "senderIsVideoCall"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string/jumbo v0, "caller_id_pick"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v4, 0x0

    if-eqz v9, :cond_0

    const-string/jumbo v0, "onlyJpg"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v0, "only3gp"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v8, :cond_1

    const-string/jumbo v4, "image/jpeg"

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getContentType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getFilterType(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->setMediaFilterType(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getFilteredSetPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/content/Intent;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v7, :cond_0

    const-string/jumbo v4, "video/3gp"

    goto :goto_0
.end method

.method private getStateTitle(Lcom/sec/samsung/gallery/drawer/StateInfo;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p1, Lcom/sec/samsung/gallery/drawer/StateInfo;->title:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private handleDCSwitchInner(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->selectItem(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabIndicator:Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->setCurrentPosition(I)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->scrollTo(I)V

    return-void
.end method

.method private hideTabInner()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "GalleryTab"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->isPickMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1201b7

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    sget-object v0, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->addTab(Lcom/sec/samsung/gallery/drawer/StateInfo;I)V

    sget-object v0, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->addTab(Lcom/sec/samsung/gallery/drawer/StateInfo;I)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->addTab(Lcom/sec/samsung/gallery/drawer/StateInfo;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1201ba

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabIndicator:Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabIndicator:Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->setTabWidget(Landroid/widget/TabWidget;I)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1201b9

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1201b8

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->refreshLayoutParams()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getCurrentTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->moveTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->bringToFront()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setFocusable(Z)V

    return-void
.end method

.method private isDesktopMode()Z
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNOSTablet()Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPickMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveTab(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "GalleryTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTab tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearFocus()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabIndicator:Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->setCurrentPosition(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->scrollTo(I)V

    :cond_0
    return-void
.end method

.method private moveTabInner(I)V
    .locals 3

    const-string/jumbo v0, "GalleryTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTab index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", currentTab="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearFocus()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabIndicator:Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->setCurrentPosition(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->scrollTo(I)V

    return-void
.end method

.method private refreshLayoutParams()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->isNOSTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_4
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2
.end method

.method private refreshTabInner()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->refreshLayoutParams()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->scrollTo(I)V

    return-void
.end method

.method private removeTab(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab$6;-><init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeTabsForInsertion(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    if-le v1, p1, :cond_0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->removeTab(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private scrollTo(I)V
    .locals 4

    const-string/jumbo v0, "GalleryTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scrollTo, index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/drawer/GalleryTab$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab$7;-><init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private selectAlbum(ILcom/sec/android/gallery3d/app/GalleryCurrentStatus;Landroid/os/Bundle;ZLjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const-class v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-ne p5, v0, :cond_0

    const-string/jumbo v0, "KEY_VIEW_REDRAW"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    sget-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v0, p1, v2, p4}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->startPickMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v0, v1, p3}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private selectChannel(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    if-ne p3, v0, :cond_0

    const-string/jumbo v0, "KEY_VIEW_REDRAW"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private selectItem(I)V
    .locals 9

    const/4 v8, 0x1

    const-string/jumbo v0, "GalleryTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "selectItem, index="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v5

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "GalleryTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "selectItem topState is null, index : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/StateInfo;->isSameTabPosition(Ljava/lang/Class;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "GalleryTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "current="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", position="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", count="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/ActivityState;->isNoItemViewMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/TabTagType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/TabTagType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    const-string/jumbo v0, "KEY_SET_NO_ITEM_ACTION_BAR"

    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "KEY_VIEW_REDRAW"

    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1004"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->selectTime(ILcom/sec/android/gallery3d/app/GalleryCurrentStatus;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1005"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->selectAlbum(ILcom/sec/android/gallery3d/app/GalleryCurrentStatus;Landroid/os/Bundle;ZLjava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1006"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v5}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->selectChannel(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;Landroid/os/Bundle;Ljava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, v2, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->selectMtp(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;Landroid/os/Bundle;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private selectMtp(Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    sget-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    const-string/jumbo v0, "KEY_MEDIA_SET_PATH"

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "KEY_MEDIA_SET_POSITION"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "KEY_IS_ENTER_MTP_PHOTO_VIEW"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private selectTime(ILcom/sec/android/gallery3d/app/GalleryCurrentStatus;Landroid/os/Bundle;Z)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsPickMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->startPickMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v0, v1, p3}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private setEnableTabInner(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    if-eqz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabIndicator:Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->setAlpha(F)V

    return-void
.end method

.method private setMediaFilterType(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentMediaFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V

    return-void
.end method

.method private setOnClickListener(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "GalleryTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error get tab view at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "GalleryTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTabSpecsCopy.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",real size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;-><init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setOnGenericMotionListener(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "GalleryTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error get tab view at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "GalleryTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTabSpecsCopy.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",real size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;-><init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    goto :goto_0
.end method

.method private setOnKeyListener(I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "GalleryTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error get tab view at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "GalleryTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTabSpecsCopy.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",real size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;-><init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method private showTabInner()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private startPickMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZZ)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getNewPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v6

    invoke-static {v6, v4}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v4, v5

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getContentType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "KEY_PICK_MEDIA_TYPE"

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getFilterTypeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    const-string/jumbo v6, "KEY_SET_NO_ITEM_ACTION_BAR"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    if-nez p2, :cond_2

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    invoke-static {v4, v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v6, v7, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v6, v7, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v6, v7, p3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v6, v7, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private updateDynamicTabs(Z)V
    .locals 5

    const/4 v4, 0x3

    const-string/jumbo v1, "GalleryTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkMtp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", before="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsTabAdded:[Z

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mIsTabAdded:[Z

    aget-boolean v1, v1, v4

    if-eq p1, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->updateMtp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->updateListeners()V

    goto :goto_0
.end method

.method private updateListeners()V
    .locals 2

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->setOnGenericMotionListener(I)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->setOnClickListener(I)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->setOnKeyListener(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateMtp(Z)Z
    .locals 6

    const/4 v5, 0x3

    if-eqz p1, :cond_2

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->removeTabsForInsertion(I)V

    sget-object v3, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/drawer/StateInfo;

    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->addTab(Lcom/sec/samsung/gallery/drawer/StateInfo;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/drawer/StateInfo;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/samsung/gallery/drawer/StateInfo;->title:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->moveTab(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    const-string/jumbo v3, "GalleryTab"

    const-string/jumbo v4, "fail to move tab to mtp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->getCurrentTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->moveTab(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mOnTabSpecsChangedListener:Lcom/sec/samsung/gallery/drawer/GalleryTabable$OnTabSpecsChangedListener;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTabable$OnTabSpecsChangedListener;->onTabSpecsChanged()V

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->findPositionByTabIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    const-string/jumbo v3, "GalleryTab"

    const-string/jumbo v4, "fail to remove mtp tab"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->removeTab(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkAllToUpdateDynamicTabs()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;

    const-string/jumbo v1, "TabPostJobThread"

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;-><init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab$8;->start()V

    return-void
.end method

.method public getNextStateInfo(II)Lcom/sec/samsung/gallery/drawer/StateInfo;
    .locals 1

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/drawer/StateInfo;

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 3

    const-string/jumbo v0, "GalleryTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", real="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabCount:I

    return v0
.end method

.method public handleDCSwitchTab(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public hasFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideTab()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public hideTabNow()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->hideTabInner()V

    return-void
.end method

.method public isLastTabFocused()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    goto :goto_0
.end method

.method public moveTab(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    const/16 v1, 0xc

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f12025e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-ne v1, v0, :cond_1

    sget-boolean v5, Lcom/sec/samsung/gallery/drawer/GalleryTab;->USE_CONDENSED_TITLE:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    :cond_1
    sget-boolean v5, Lcom/sec/samsung/gallery/drawer/GalleryTab;->USE_CONDENSED_TITLE:Z

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v3, v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public refreshTab()V
    .locals 2

    const/16 v1, 0xb

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public removeAllMessage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public requestFocus()V
    .locals 2

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 4

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setEnableTab(Z)V
    .locals 4

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showTab()V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public updateBottomIndicator(F)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
