.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
.super Ljava/lang/Object;
.source "MoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;,
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$LoadBitmapDataTask;,
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$EditSaveTask;,
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;,
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$MyAnimatorListener;,
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;
    }
.end annotation


# static fields
.field public static final ACTION_RESULT_CANCEL:I = 0x1

.field public static final ACTION_RESULT_DONE:I = 0x0

.field public static final ACTION_RESULT_NONE:I = -0x1

.field private static final ALPHA_VLUE:I = 0x99

.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final BLUR_IMAGE_RADIUS:I = 0x19

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field public static final EVENT_MOREINFO_START:I = 0x0

.field private static final FEATURE_USE_NAVIGATION_BAR:Z

.field private static final FEATURE_USE_VISUAL_MOREINFO:Z

.field private static final MESSAGE_BITMAP:I = 0x0

.field private static final MESSAGE_EDIT_CANCEL:I = 0x4

.field private static final MESSAGE_EDIT_DONE:I = 0x3

.field private static final MESSAGE_HIDE_SOFT_KEYBOARD:I = 0x5

.field private static final MESSAGE_ITEM_ANIMATION:I = 0x2

.field private static final MESSAGE_UPDATE_ACTIONBAR:I = 0x1

.field public static final MODE_TARTGET_EDIT:I = 0x2

.field public static final MODE_TARTGET_NORMAL:I = 0x1

.field private static final MSG_ADJUST_SIP_SIZE:I = 0x6

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field private static final TAG:Ljava/lang/String; = "MoreInfo"

.field public static final VISUAL_MOREINFO_OPACITY:F = 0.4f


# instance fields
.field private mActionBarButtons:Landroid/view/View;

.field private final mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

.field private mBackgroundColor:I

.field private final mBlurImage:Landroid/graphics/Bitmap;

.field private mBodyView:Landroid/widget/LinearLayout;

.field private final mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

.field private mEditMode:Z

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mHandler:Landroid/os/Handler;

.field private mInputMethodHeight:I

.field private final mIsDisabledMap:Z

.field private mIsEdited:Z

.field private mIsInputMethodShown:Z

.field private mIsItemDetailsEdited:Z

.field private final mItemDetailsEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

.field private final mListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mMoreInfoActionListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

.field private mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

.field private mMoreInfoItemDetails:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

.field private mMoreInfoItemPeople:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

.field private mMoreInfoItemTags:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

.field private mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

.field private mPreviousInputMethodHeight:I

.field private mRootView:Landroid/view/View;

.field private mSetReadyToShowVisualCategory:Z

.field private mSetReadyToShowVisualPeople:Z

.field private final mUseBlurBackground:Z

.field private mViewItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_NAVIGATION_BAR:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;ZLandroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsEdited:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsItemDetailsEdited:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsInputMethodShown:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mSetReadyToShowVisualCategory:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mSetReadyToShowVisualPeople:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mItemDetailsEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$9;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$9;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoActionListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    iput v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mInputMethodHeight:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mPreviousInputMethodHeight:I

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$12;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsDisabledMap:Z

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBlurImage:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBar;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBar;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100165

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBackgroundColor:I

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBackgroundColor:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsEdited:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBackgroundColor:I

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsItemDetailsEdited:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->startDestroyAnimation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->setLayoutParams(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->showItemAnimation()V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mSetReadyToShowVisualCategory:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->updateActionBar()V

    return-void
.end method

.method static synthetic access$2002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mSetReadyToShowVisualPeople:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsInputMethodShown:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->invalidate()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->actionEditDone()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->actionEditCancel()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mPreviousInputMethodHeight:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mPreviousInputMethodHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mInputMethodHeight:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mInputMethodHeight:I

    return p1
.end method

.method private actionEditCancel()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->actionEditCancel()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsEdited:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsItemDetailsEdited:Z

    return-void
.end method

.method private actionEditDone()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$EditSaveTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$EditSaveTask;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$1;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$EditSaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsEdited:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsItemDetailsEdited:Z

    return-void

    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$EditSaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private checkToAddItem(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemPeople:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemPeople:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->getAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->getNoItem()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->getCategoryAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->isNoItem()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createBlurImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-le v6, v7, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {p2, v6, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v7, 0x1

    invoke-static {v4, p2, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v5, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v6, "MoreInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    :cond_6
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    :cond_a
    throw v6

    :cond_b
    move-object v0, p2

    goto :goto_0
.end method

.method private getNavigationBarHeight()I
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleAddTagsActivity()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemTags:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;->launchAddTagsActivity()V

    return-void
.end method

.method private handleRemoveCategory()V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_5

    sget-boolean v6, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    check-cast v6, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->getCategoryAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->isNoItem()Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v7

    :goto_0
    if-eqz v0, :cond_4

    sget-boolean v6, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    check-cast v6, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->getCategoryAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->handleDeviceCogCategoryDelete()V

    :goto_1
    new-instance v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->REMOVE_CATEGORY_EXIST:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v4, v6, v7}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v5, "Details"

    :goto_2
    invoke-interface {v4, v5}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "RemoveCategorySave"

    invoke-static {v6, v7, v3, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    check-cast v6, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->getCategoryAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    move v0, v7

    :goto_3
    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    check-cast v6, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->getCategoryAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->handleDeviceCogCategoryDelete()V

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->REMOVE_CATEGORY_EXIST:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v4, v6, v8}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v5, "EditInfo"

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->REMOVE_CATEGORY_AVAILABLE:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v4, v6, v8}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v5, "EditInfo"

    goto :goto_2
.end method

.method private handleRemoveLocationInfo()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->handleDeleteIconClick()V

    invoke-virtual {p0, v9, v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->changeMode(II)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemDetails:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->setEditedTitleNameForDCRemoveLocation(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->REMOVE_LOCATION_EXIST:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v2, v4, v9}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    const-string/jumbo v3, "Details"

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_0
    invoke-interface {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "RemoveLocationSave"

    invoke-static {v4, v5, v1, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_1
    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->REMOVE_LOCATION_EXIST:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v2, v4, v8}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    const-string/jumbo v3, "EditInfo"

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_0
.end method

.method private handleRemoveTag()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-boolean v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemTags:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;->getAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->getItemCount()I

    move-result v7

    if-lez v7, :cond_0

    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemTags:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;->getAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;->processDeleteAll()V

    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->REMOVE_TAGS_EXIST:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v2, v6, v5}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v3, "Details"

    :goto_1
    invoke-interface {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "RemoveTagsSave"

    invoke-static {v5, v6, v1, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->REMOVE_TAGS_EXIST:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v2, v5, v6}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v3, "EditInfo"

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->REMOVE_TAGS_AVAILABLE:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v2, v5, v6}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v3, "EditInfo"

    goto :goto_1
.end method

.method private handleRemoveUrl()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemDetails:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->processDeleteUrl(Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, v8, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->changeMode(II)V

    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->REMOVE_URL_EXIST:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v2, v5, v8}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v3, "Details"

    :goto_0
    invoke-interface {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "RemoveUrlSave"

    invoke-static {v5, v6, v1, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->REMOVE_URL_EXIST:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v2, v5, v7}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    const-string/jumbo v3, "EditInfo"

    goto :goto_0
.end method

.method private handleRenameFile(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSCloudMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSharedEventItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->FILE_NAME_EDIT_AVAILABLE:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    invoke-direct {v1, v2, v6}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    const-string/jumbo v2, "EditInfo"

    invoke-virtual {v1, v2}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "RenameEditInfoSave"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a055a

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "RenameEditInfoSave"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemDetails:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->getTitleEditText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemDetails:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->fileAlreadyExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0559

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "FileName"

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "RenameEditInfoSave"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemDetails:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->changeMode(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-interface {v2, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mItemDetailsEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-interface {v2, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    goto :goto_0
.end method

.method private handleStartMapSearchView()V
    .locals 6

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsDisabledMap:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v4, 0x20000000

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->LOCATION_EDIT_AVAILABLE:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    const-string/jumbo v2, "EditInfo"

    invoke-virtual {v1, v2}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "MapSearchView"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->setMode(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    sget-object v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->BIXBY_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->startMap(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;)Z

    goto :goto_0
.end method

.method private handleStartMapViewFromBixby()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    sget-object v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->BIXBY_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->startMap(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;)Z

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a05ab

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "MapView"

    invoke-static {v2, v3, v1, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a05aa

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 5

    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;->isAccessoryKeyboardState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method

.method private initChildView()V
    .locals 15

    const v11, 0x7f0400c5

    const v14, 0x7f02020a

    const v13, 0x7f0201ff

    const v6, 0x7f0400cd

    const v12, 0x7f02020b

    new-instance v9, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0400ce

    :goto_0
    const v4, 0x7f0a00db

    invoke-direct {v3, v0, v12, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;-><init>(III)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {v9, v1, v2, v3, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v4, :cond_6

    const v4, 0x7f0400d0

    :goto_1
    const v5, 0x7f0a028c

    invoke-direct {v3, v4, v12, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;-><init>(III)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsDisabledMap:Z

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemTags:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemTags:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemTags:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsGooglePlayServicesAvailable:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-eqz v0, :cond_7

    const v7, 0x7f0400ca

    :goto_2
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;

    const v4, 0x7f0a0248

    invoke-direct {v3, v7, v13, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;-><init>(III)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsDisabledMap:Z

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    :goto_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v4, :cond_2

    const v6, 0x7f0400cb

    :cond_2
    const v4, 0x7f0a031f

    invoke-direct {v3, v6, v12, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;-><init>(III)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoActionListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsDisabledMap:Z

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemPeople:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemPeople:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v4, :cond_a

    const v4, 0x7f0400c1

    :goto_4
    const v5, 0x7f0a008a

    invoke-direct {v3, v4, v14, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;-><init>(III)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoActionListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsDisabledMap:Z

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->setVisionCloudUtils(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_5
    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v4, :cond_e

    const v4, 0x7f0400c4

    :goto_6
    const v6, 0x7f0201fe

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v5, :cond_f

    const v5, 0x7f0a0264

    :goto_7
    invoke-direct {v3, v4, v6, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;-><init>(III)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoActionListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemDetails:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemDetails:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mItemDetailsEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemDetails:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->getView()Landroid/view/View;

    move-result-object v10

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    :cond_5
    move v0, v6

    goto/16 :goto_0

    :cond_6
    move v4, v6

    goto/16 :goto_1

    :cond_7
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v0, :cond_8

    const v7, 0x7f0400c8

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f0400c7

    goto/16 :goto_2

    :cond_9
    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;

    const v4, 0x7f0a0248

    invoke-direct {v3, v7, v13, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;-><init>(III)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsDisabledMap:Z

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    goto/16 :goto_3

    :cond_a
    move v4, v11

    goto/16 :goto_4

    :cond_b
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_c
    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v4, :cond_d

    const v11, 0x7f0400c6

    :cond_d
    const v4, 0x7f0a008a

    invoke-direct {v3, v11, v14, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;-><init>(III)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoActionListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_e
    const v4, 0x7f0400c3

    goto/16 :goto_6

    :cond_f
    const v5, 0x7f0a0343

    goto/16 :goto_7

    :cond_10
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->showItemAnimation()V

    :cond_11
    return-void
.end method

.method private invalidate()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isDataEdited()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->dataEdited()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private resetNavigationBarPosition()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    goto :goto_0
.end method

.method private setLayoutParams(Z)V
    .locals 4

    const/16 v3, 0x500

    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_NAVIGATION_BAR:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setSystemUiVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v1, Lcom/sec/samsung/gallery/lib/factory/LayoutParamsWrapper;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LayoutParamsWrapper;->addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    const v2, 0x7f1201e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/lib/factory/LayoutParamsWrapper;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LayoutParamsWrapper;->clearExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private showItemAnimation()V
    .locals 14

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v9, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mSetReadyToShowVisualPeople:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mSetReadyToShowVisualCategory:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mSetReadyToShowVisualCategory:Z

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mSetReadyToShowVisualPeople:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->getView()Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->checkToAddItem(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    if-eqz v9, :cond_7

    instance-of v9, v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemCategory:Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;

    check-cast v9, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->getCategoryAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_4
    const-wide/16 v2, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    const/4 v10, 0x2

    iput v10, v8, Landroid/os/Message;->what:I

    iput-object v7, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x1

    add-long v4, v2, v12

    const-wide/16 v12, 0x64

    mul-long/2addr v12, v2

    invoke-virtual {v10, v8, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-wide v2, v4

    goto :goto_5

    :cond_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mViewItem:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method private showNavigationBar()V
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private startDestroyAnimation()V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v5, "googlemap"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f05001e

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;

    invoke-direct {v4, p0, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$5;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "MoreInfo"

    const-string/jumbo v5, "onDestroy : IllegalState in MoreInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startLoadBitmapTask()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$LoadBitmapDataTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$LoadBitmapDataTask;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$10;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$10;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method

.method private switchViewMode()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05002a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$6;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$6;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f1201e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$7;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$7;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "GDDE"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v2, "304"

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setMode(Z)V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "303"

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->updateLayout()V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->isDataEdited()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->updateDoneButton(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeMode(II)V
    .locals 4

    const v3, 0x7f05002a

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->initActionBar()V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->switchViewMode()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->switchViewMode()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->actionEditDone()V

    goto :goto_1

    :cond_3
    if-ne p2, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->actionEditCancel()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActionBarManager()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    return-object v0
.end method

.method public getAddTagResult()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoItemTags:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;->getAddTagResult()Z

    move-result v0

    return v0
.end method

.method public getInputMethodHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mInputMethodHeight:I

    return v0
.end method

.method public handleDCMoreInfoAction(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EDIT_MORE_INFO:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBar;->startActionEdit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_REMOVE_LOCATION_INFO:I

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->handleRemoveLocationInfo()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_MAP_VIEW_EDIT:I

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->handleStartMapSearchView()V

    goto :goto_0

    :cond_3
    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_REMOVE_CATEGORY:I

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->handleRemoveCategory()V

    goto :goto_0

    :cond_4
    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_RENAME_EDIT_INFO:I

    if-ne p1, v0, :cond_5

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->handleRenameFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_MAP_VIEW:I

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->handleStartMapViewFromBixby()V

    goto :goto_0

    :cond_6
    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_REMOVE_TAGS:I

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->handleRemoveTag()V

    goto :goto_0

    :cond_7
    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_REMOVE_URL:I

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->handleRemoveUrl()V

    goto :goto_0

    :cond_8
    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ADD_TAGS:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->handleAddTagsActivity()V

    goto :goto_0
.end method

.method public initActionBar()V
    .locals 10

    const/4 v9, 0x0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRightAlignedActionbar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-nez v6, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBar;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsDisabledMap:Z

    invoke-direct {v0, v6, v7, v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBar;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)V

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-eqz v6, :cond_3

    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->hide()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarButtons:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    const v7, 0x7f1201df

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_4

    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const v6, 0x7f0b0039

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_2
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-nez v6, :cond_5

    invoke-virtual {v2, v9, v3, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    :goto_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->updateActionBar()V

    return-void

    :cond_0
    if-eqz v5, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarButtons:Landroid/view/View;

    invoke-direct {v0, v6, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->show()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarButtons:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->show()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarButtons:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const v6, 0x7f0b0038

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_6
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v6, v9, v3, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3
.end method

.method public initView()V
    .locals 11

    const/4 v8, 0x0

    const/4 v10, -0x1

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f0c0152

    invoke-direct {v4, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    invoke-virtual {v7, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget-boolean v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_NAVIGATION_BAR:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setSystemUiVisibility(I)V

    :goto_0
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v7, :cond_3

    const v9, 0x7f0400c0

    move-object v7, v8

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v5, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    const v8, 0x7f120077

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarButtons:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarButtons:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v7, "MoreInfo"

    const-string/jumbo v8, "moreinfo : start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->startLoadBitmapTask()V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    const v8, 0x7f1201df

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$8;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$8;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->updateLayout()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    const v8, 0x7f1201e1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBodyView:Landroid/widget/LinearLayout;

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    const v8, 0x7f1201e2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBlurImage:Landroid/graphics/Bitmap;

    if-nez v7, :cond_4

    const v7, 0x106000d

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_2
    sget-boolean v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_VISUAL_MOREINFO:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBodyView:Landroid/widget/LinearLayout;

    const/16 v8, 0x50

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->initChildView()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->showNavigationBar()V

    goto/16 :goto_0

    :cond_3
    const v7, 0x7f0400bf

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_1

    :cond_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mBlurImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->createBlurImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    const v7, 0x106000c

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f050028

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method public isEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    return v0
.end method

.method public isEditedStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsEdited:Z

    return v0
.end method

.method public isItemDetailsEditStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsItemDetailsEdited:Z

    return v0
.end method

.method public isVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runMoreInfoEvent(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mItemDetailsEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_NAVIGATION_BAR:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->setSystemUiVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mActionBarManager:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBar;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBar;->setTitleTextColor(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->updateActionBar()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->updateLayout()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->onDestroy()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$4;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refresh()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$11;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$11;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshQuery(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->refreshQuery(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reload()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->reload()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setInputMethodVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mIsInputMethodShown:Z

    return-void
.end method

.method public setLatLng(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->setLatLng(Ljava/lang/Double;Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method public setMoreInfoContainerMargin(I)V
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    const v8, 0x7f1201df

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-boolean v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isFullScreenMode()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->resetNavigationBarPosition()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    move-result-object v5

    sget-object v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->BOTTOM:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    if-ne v5, v7, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->getNavigationBarHeight()I

    move-result v1

    :goto_0
    sget-object v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    if-ne v5, v7, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->getNavigationBarHeight()I

    move-result v2

    :goto_1
    sget-object v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$NavigationPos;

    if-ne v5, v7, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->getNavigationBarHeight()I

    move-result v3

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    add-int v6, v1, p1

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_2
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setVisionCloudUtils(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    return-void
.end method

.method public setWaitResultFromEditLocation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mMoreInfoLocationItem:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->setWaitResultFromEditLocation(Z)V

    :cond_0
    return-void
.end method

.method public updateLayout()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    const v9, 0x7f1201e0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    const v9, 0x7f1201df

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const v8, 0x7f0b0039

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_0
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mUseBlurBackground:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-nez v8, :cond_2

    invoke-virtual {v1, v10, v5, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->setMoreInfoContainerMargin(I)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setFocusable(Z)V

    const v8, 0x7f0b0035

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v8, 0x7f0b0036

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const v8, 0x7f0b01a7

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const v8, 0x7f0b01a8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v3, 0x19

    const/16 v4, 0x19

    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v7, v3, v8, v4, v9}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_1
    const v8, 0x7f0b0038

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mEditMode:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v8, v10, v5, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1
.end method
