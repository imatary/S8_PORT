.class public Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
.super Ljava/lang/Object;
.source "DecorationMenuLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;,
        Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final COVER_TYPE1:I = 0xc8

.field public static final LABEL_TYPE1:I = 0x64

.field public static final STICKER_RECENT:I = 0x0

.field public static final STICKER_TYPE1:I = 0x1

.field public static final STICKER_TYPE10:I = 0xa

.field public static final STICKER_TYPE11:I = 0xb

.field public static final STICKER_TYPE12:I = 0xc

.field public static final STICKER_TYPE13:I = 0xd

.field public static final STICKER_TYPE2:I = 0x2

.field public static final STICKER_TYPE3:I = 0x3

.field public static final STICKER_TYPE4:I = 0x4

.field public static final STICKER_TYPE5:I = 0x5

.field public static final STICKER_TYPE6:I = 0x6

.field public static final STICKER_TYPE7:I = 0x7

.field public static final STICKER_TYPE8:I = 0x8

.field public static final STICKER_TYPE9:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_DB:Ljava/lang/String;


# instance fields
.field private mAniconResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

.field private mAnimate:Z

.field public mContext:Landroid/content/Context;

.field public mCoverPagerInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrTabPos:I

.field private mCurrentState:I

.field private mDecorationDivider:Landroid/view/View;

.field mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

.field mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

.field private mDecorationTabContainer:Landroid/widget/LinearLayout;

.field private mDownloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mDrawerHandle:Landroid/widget/FrameLayout;

.field private mIsExpand:Z

.field public mLabelPagerInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mManagerOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrientationBeforeManagerLaunch:I

.field private mStates:[Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;

.field public mStickerDownloadManagerInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStickerPackageReceiver:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;

.field public mStickerPagerInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

.field private mTabHostLayout:Landroid/widget/TabHost;

.field private mTabOnTouchListener:Landroid/view/View$OnTouchListener;

.field mTabwidgetLayout:Landroid/widget/RelativeLayout;

.field private mTestInterface:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;

.field private mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

.field private mTrayDrawerCloseListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

.field private mTrayDrawerOpenListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG_DB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrTabPos:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mOrientationBeforeManagerLaunch:I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$13;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$13;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawerOpenListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$14;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$14;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawerCloseListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabwidgetLayout:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDrawerHandle:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mIsExpand:Z

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTestInterface:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStates:[Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mAnimate:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->clearAllTabSelectedStates()V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mIsExpand:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->scrollToSelectedPosition(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrTabPos:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->launchSamsungAppsStickerCategories()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mAnimate:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTestInterface:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;

    return-object v0
.end method

.method private addTab(Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private clearAllTabSelectedStates()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createAniconDispatcherExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private getCategoryProjection()[Ljava/lang/String;
    .locals 3

    const/16 v1, 0x8

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "initial_order"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "package_title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "package_thumb_res"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "category_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_download"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "re_arranged_order"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_visible"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getInsertCV(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "initial_order"

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getInitIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "package_name"

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_title"

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_thumb_res"

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getTabIconRes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "category_id"

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_download"

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->isDownloadTab()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "re_arranged_order"

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getInitIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "is_visible"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private getNames(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "sticker_list"

    const-string v6, "xml"

    invoke-virtual {v2, v5, v6, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->processXMLData(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG:Ljava/lang/String;

    const-string v6, "XML read error getNames DMLM"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private insertDownloadStickerCategoriesByPM(I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v18, "com.samsung.android.photoretouching.sticker"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getNames(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getItemRes()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    :try_start_0
    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, p1, 0x1

    move/from16 v3, p1

    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v18, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getInsertCV(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;)Landroid/content/ContentValues;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG_DB:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pm - after download insert "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 p1, v11

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :goto_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG_DB:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pm - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pm - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v9

    move/from16 p1, v11

    goto :goto_1
.end method

.method private insertPreLoadStickerCategories()V
    .locals 8

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mStickerPreloadTabRes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mStickerPreloadTabTitles:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-1"

    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mStickerPreloadTabResStrings:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getInsertCV(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->isDownloadTab()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG_DB:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after Preload Sticker inserted  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private launchSamsungAppsStickerCategories()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "samsungapps://CategoryList/0000005229"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "categoryTitle"

    const-string v3, "PhotoEditor Stickers"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "hideUpBtn"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "hideSearchBtn"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "Activity Not Found !"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    const-string v3, "Target Activity Not Found"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private scrollToSelectedPosition(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    const v5, 0x7f0e0452

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    const v5, 0x7f0e0451

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v4, v3, v1

    add-int/lit8 v5, p1, -0x1

    mul-int/2addr v4, v5

    invoke-virtual {v0, v4, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v0, v6, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method private setTabButtonBackgrounds()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0e042a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0206b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterPrivateModeReceiver(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPackageReceiver:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPackageReceiver:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPackageReceiver:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPackageReceiver:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPackageReceiver:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;

    throw v1
.end method


# virtual methods
.method public closeDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->animateClose()V

    :cond_0
    return-void
.end method

.method public configurationChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->init()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setTab()V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->unregisterPrivateModeReceiver(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mAniconResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mAniconResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->shutdown()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->destroy()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    :cond_3
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStates:[Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTestInterface:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mIsExpand:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->setExpanded(Z)V

    :cond_4
    return-void
.end method

.method public drawerHide(Z)V
    .locals 10

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mAnimate:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->closeDrawer()V

    move v9, p1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationDivider:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$9;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$9;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$10;

    invoke-direct {v2, p0, v9, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$10;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;ZLandroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public drawerShow()V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationDivider:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$7;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$7;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$8;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$8;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I

    return v0
.end method

.method public getInsertRecentCV(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "item_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_res_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_no_of_times_used"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "is_gif"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public getNumColumn()I
    .locals 3

    const/4 v0, 0x2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I

    const v2, 0x80002

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v1, v0, :cond_1

    const/4 v0, 0x6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I

    const v2, 0x80003

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I

    const v1, 0x8000a

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecentProjection()[Ljava/lang/String;
    .locals 3

    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "item_package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "item_res_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "item_no_of_times_used"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_gif"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getStickerPagesInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getTabLinearLayout()Landroid/widget/LinearLayout;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    const v1, 0x7f0e0452

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 51

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    if-nez v4, :cond_3

    const/16 v30, -0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->initStickerPackageBroadcastReceiver()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v5, 0x7f0e0202

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v5, 0x7f0e044d

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationDivider:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v5, 0x7f0e0450

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f0e044e

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f0e044f

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabwidgetLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isUtraPowerSavingMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabwidgetLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v41

    check-cast v41, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800e0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerDownloadManagerInfo:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mLabelPagerInfo:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCoverPagerInfo:Ljava/util/ArrayList;

    const-string v7, "is_visible=?"

    const/16 v26, 0x1

    const-string v9, "re_arranged_order ASC"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getCategoryProjection()[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v8, v12

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v29

    if-eqz v29, :cond_2

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const-string v4, "initial_order"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v4, "package_name"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    const-string v4, "package_title"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v4, "package_thumb_res"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v4, "category_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v4, "is_download"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_5

    const/16 v16, 0x1

    :goto_2
    new-instance v10, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    if-eqz v16, :cond_6

    move-object/from16 v12, v46

    :goto_3
    invoke-direct/range {v10 .. v16}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_4
    const/16 v18, 0x0

    :goto_5
    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mStickerDownloadManageTabRes:[I

    array-length v4, v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerDownloadManagerInfo:Ljava/util/ArrayList;

    new-instance v17, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    const-string v19, "com.sec.android.mimage.photoretouching"

    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mStickerDownloadManageTabTitles:[Ljava/lang/String;

    aget-object v20, v5, v18

    const-string v21, "-1"

    sget-object v5, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mStickerDownloadManageTabResStrings:[Ljava/lang/String;

    aget-object v22, v5, v18

    const/16 v23, 0x0

    invoke-direct/range {v17 .. v23}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrTabPos:I

    move/from16 v30, v0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabwidgetLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v41

    check-cast v41, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08057c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, v41

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_5
    const/16 v16, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->insertPreLoadStickerCategories()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->insertDownloadStickerCategoriesByPM(I)V

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mLabelPagerInfo:Ljava/util/ArrayList;

    new-instance v19, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    const/16 v20, 0x64

    const-string v21, "com.sec.android.mimage.photoretouching"

    const-string v22, "Label"

    const-string v23, "-1"

    const-string v24, "ic_label"

    const/16 v25, 0x0

    invoke-direct/range {v19 .. v25}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCoverPagerInfo:Ljava/util/ArrayList;

    new-instance v19, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    const/16 v20, 0xc8

    const-string v21, "com.sec.android.mimage.photoretouching"

    const-string v22, "Cover"

    const-string v23, "-1"

    const-string v24, "ic_cover"

    const/16 v25, 0x0

    invoke-direct/range {v19 .. v25}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setScrollBarStyle(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$3;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDownloadOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$4;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mManagerOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v40

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v50

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v50

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v36, 0x0

    const/16 v36, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    const v4, 0x7f0300c7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/LinearLayout;

    invoke-virtual/range {v42 .. v42}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v43

    check-cast v43, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e042b

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    const/16 v44, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v44

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getTabIconRes()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v44

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v47

    move-object/from16 v0, v37

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getInitIndex()I

    move-result v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setId(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->addTab(Landroid/widget/LinearLayout;)V

    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_6

    :catch_0
    move-exception v33

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tab insertion failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_7

    :cond_9
    const/16 v36, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerDownloadManagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerDownloadManagerInfo:Ljava/util/ArrayList;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    const v4, 0x7f0300c7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/LinearLayout;

    invoke-virtual/range {v42 .. v42}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v43

    check-cast v43, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerDownloadManagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v36

    if-eq v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_9
    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0e042b

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    const/16 v44, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v44

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getTabIconRes()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v38

    move-object/from16 v0, v44

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v47

    move-object/from16 v0, v37

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v4, v4, v36

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setId(I)V

    if-nez v36, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDownloadOnTouchListener:Landroid/view/View$OnTouchListener;

    :goto_b
    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->addTab(Landroid/widget/LinearLayout;)V

    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_8

    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, v43

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_9

    :catch_1
    move-exception v33

    sget-object v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tab sticker manager insertion failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_a

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mManagerOnTouchListener:Landroid/view/View$OnTouchListener;

    goto :goto_b

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setTabButtonBackgrounds()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    new-array v4, v4, [Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStates:[Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;

    const/16 v36, 0x0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e042b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v39, v4

    check-cast v39, Landroid/widget/ImageView;

    invoke-virtual/range {v39 .. v39}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v32

    if-eqz v32, :cond_d

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStates:[Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/MyStateDrawables;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v36

    new-instance v48, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v48 .. v48}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100a1

    aput v6, v4, v5

    move-object/from16 v0, v48

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x101009c

    aput v6, v4, v5

    move-object/from16 v0, v48

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    new-array v4, v4, [I

    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$5;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_c

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f0e0449

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f0e044b

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDrawerHandle:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    const v5, 0x7f0e044c

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/ImageView;

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v45

    check-cast v45, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v31, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v35

    sub-int v4, v31, v35

    move-object/from16 v0, v45

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v34

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawerCloseListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    move/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v4, v5, v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->setOnDrawerCloseListener(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawerOpenListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->setOnDrawerOpenListener(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;)V

    const/4 v4, -0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_f

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v5, v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;I)V

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    return-void
.end method

.method public initStickerPackageBroadcastReceiver()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPackageReceiver:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPackageReceiver:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPackageReceiver:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$StickerPackageBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public isDrawerOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mIsExpand:Z

    return v0
.end method

.method public launchStickerManagerIntent()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mOrientationBeforeManagerLaunch:I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.mimage.photoretouching.Decoration.stickermanager.StickerManagerActivity"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0xd

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "Activity Not Found !"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    const-string v3, "Target Activity Not Found"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onDownloadStickerUpdateReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->drawerHide(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setStateToSuperimpose()V

    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v24

    const-string v2, "sticker_list"

    const-string v3, "xml"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v28

    if-eqz v28, :cond_0

    invoke-static/range {v28 .. v28}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->processXMLData(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    :cond_0
    :goto_0
    const/16 v23, -0x1

    const-string v7, "initial_order DESC"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "initial_order"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->insertPreLoadStickerCategories()V

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v23

    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- ACTION_PACKAGE_REPLACED -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const-string v11, "category_id=?"

    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "package_name"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "package_title"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0, v11, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG_DB:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() after replaced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->setPackageName(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->setPackageTitle(Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->init()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setTab()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$12;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catch_0
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "initial_order"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v23, v2, 0x1

    goto/16 :goto_1

    :cond_5
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- ACTION_PACKAGE_ADDED -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz v25, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getItemRes()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    const-string v11, "package_name=?"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "package_name"

    aput-object v3, v10, v2

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v27

    if-eqz v27, :cond_6

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    new-instance v12, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    move/from16 v13, v23

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-direct/range {v12 .. v18}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getInsertCV(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG_DB:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() after inserted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG_DB:Ljava/lang/String;

    const-string v3, "onReceive() ACTION_PACKAGE_ADDED record existed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- ACTION_PACKAGE_REMOVED -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const-string v11, "category_id=?"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v11, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG_DB:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() ACTION_PACKAGE_REMOVED after removed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v31, "item_package_name=?"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG_DB:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() ACTION_PACKAGE_REMOVED after removed Recent entries "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->TAG:Ljava/lang/String;

    const-string v3, "onReceive() Cursor count is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public openDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->animateOpen()V

    :cond_0
    return-void
.end method

.method public refreshTabFromManage()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mOrientationBeforeManagerLaunch:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->init()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setTab()V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$11;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$11;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setCurrTabPos(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrTabPos:I

    return-void
.end method

.method public setCurrentState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I

    return-void
.end method

.method public setDrawerHandleVisibility(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDrawerHandle:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDrawerHandle:Landroid/widget/FrameLayout;

    const v2, 0x7f0e044c

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTab()V
    .locals 12

    const-wide v10, 0x3fe199999999999aL    # 0.55

    const/4 v9, 0x2

    const/4 v8, 0x0

    const-wide v6, 0x3fdc28f5c28f5c29L    # 0.44

    const v5, 0x7f0c0094

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->createAniconDispatcherExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mAniconResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabwidgetLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v3, v9, :cond_1

    const-wide v4, 0x3fe8f5c28f5c28f6L    # 0.78

    int-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08057b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mStickerPagerInfo:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mAniconResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    invoke-direct {v4, v3, p0, v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Ljava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0

    :cond_1
    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabwidgetLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v3, v9, :cond_2

    int-to-double v4, v2

    mul-double/2addr v4, v10

    double-to-int v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mLabelPagerInfo:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mAniconResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    invoke-direct {v4, v3, p0, v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Ljava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto/16 :goto_0

    :cond_2
    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2

    :sswitch_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabHostLayout:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTabwidgetLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v3, v9, :cond_3

    int-to-double v4, v2

    mul-double/2addr v4, v10

    double-to-int v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCoverPagerInfo:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v4, v3, p0, v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Ljava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto/16 :goto_0

    :cond_3
    int-to-double v4, v2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x80002 -> :sswitch_0
        0x80003 -> :sswitch_1
        0x8000a -> :sswitch_2
    .end sparse-switch
.end method

.method public setTabIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPagerAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->clearAllTabSelectedStates()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mCurrTabPos:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->scrollToSelectedPosition(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80002
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVisibilityDirectly()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->drawerShow()V

    goto :goto_0
.end method

.method public showTabView(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->setVisibilityDirectly()V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->isDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->openDrawer()V

    :cond_0
    return-void
.end method
