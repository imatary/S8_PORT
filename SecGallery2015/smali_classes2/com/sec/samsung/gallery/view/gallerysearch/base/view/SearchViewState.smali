.class public abstract Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "SearchViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;,
        Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$DataLoaderConfig;,
        Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;,
        Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$SelectionTask;,
        Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;
    }
.end annotation


# static fields
.field protected static final ACTIONBAR_ANIMATION_DURATION:I = 0x1f4

.field protected static final COLCNT_LEVEL_DEFAULT:I = 0x2

.field protected static final DCM_NOTY_BUFFER_SIZE:I = 0xa

.field protected static final DCM_NOTY_DELAY:I = 0xbb8

.field protected static final DELAY_ENTER_KEYWORD_MILS:I = 0x1f4

.field protected static final IS_MOVABLE_KEYPAD:Ljava/lang/String; = "AxT9IME.isMovableKeypad"

.field protected static final MSG_ADJUST_SIP_SIZE:I = 0x3

.field protected static final MSG_ENTER_KEYWORD:I = 0x2

.field protected static final MSG_SEARCH_UPDATE_SELECTED_ITEM:I = 0x4

.field protected static final MSG_UPDATE_CATEGORY:I = 0x1

.field protected static final PREFKEY_GALLERYSEARCH_VIEW_MODE:Ljava/lang/String; = "gallerSearchViewMode"

.field private static final REQUEST_ALBUM_LIST:I = 0xc00

.field protected static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field protected static final RESPONSE_AXT9INFO_TYPE_CHANGED:Ljava/lang/String; = "ResponseAxT9InfoTypeChanged"

.field protected static final SUPPORT_REALTIME_CATEGORY_UPDATE:Z = true

.field private static final TAG:Ljava/lang/String; = "SearchViewState"

.field public static final VISUAL_SEARCH_CATEGORYVIEW:I = 0x2

.field public static final VISUAL_SEARCH_KEYWORDS_LISTVIEW:I = 0x4

.field public static final VISUAL_SEARCH_NO_ITEM:I = 0x1

.field public static final VISUAL_SEARCH_RESULTVIEW:I = 0x0

.field public static final VISUAL_SEARCH_SUGGETSION_LISTVIEW:I = 0x3

.field public static final VISUAL_SEARCH_UNKNOWN:I = -0x1


# instance fields
.field protected mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

.field protected final mAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mCloseTipsButtonPressed:Z

.field protected mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field protected mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

.field protected mContainer:Landroid/view/ViewGroup;

.field protected mCurrentTopSetPath:Ljava/lang/String;

.field protected mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field protected mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field protected mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field protected mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

.field protected mInputMethodHeight:I

.field protected mIsFinishingState:Z

.field protected mIsInputMethodShown:Z

.field protected mIsMovableKeypad:Z

.field protected mIsRelatedSearch:Z

.field protected mIsShareState:Z

.field protected mIsTranslateAnimating:Z

.field protected final mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

.field protected mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

.field protected mNoItemView:Landroid/view/View;

.field private mOriginalOverflowBg:Landroid/graphics/drawable/Drawable;

.field protected mOverFlowView:Landroid/view/View;

.field protected mPreviousViewMode:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field protected mRemoveCountUpdateMessage:I

.field protected mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field protected mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

.field protected mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

.field protected mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field protected mTempKeyword:Ljava/lang/String;

.field protected mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;

.field protected mVoiceRecog:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mContainer:Landroid/view/ViewGroup;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mVoiceRecog:Z

    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mRemoveCountUpdateMessage:I

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mTempKeyword:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mIsTranslateAnimating:Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mIsShareState:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mIsRelatedSearch:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mCloseTipsButtonPressed:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mIsFinishingState:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->sendSearchResultResponse()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->setActionBarBGColor(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->selectAllPostProcess()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;Lcom/sec/android/gallery3d/data/MediaSet;IZLcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;IZLcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    return-void
.end method

.method private getActionbarUpButton(I)Landroid/widget/ImageButton;
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "action_bar"

    const-string/jumbo v9, "id"

    const-string/jumbo v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v4, v6, v7}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    const-string/jumbo v6, "SearchViewState"

    const-string/jumbo v7, "refreshActionBarTheme : navigate up button cannot find."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v5

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v6, v2, Landroid/widget/ImageButton;

    if-eqz v6, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getMiddleColor(FII)I
    .locals 14

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v12, v4

    sub-int v13, v4, v8

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v0, v12

    int-to-float v12, v7

    sub-int v13, v7, v11

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v3, v12

    int-to-float v12, v6

    sub-int v13, v6, v10

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v2, v12

    int-to-float v12, v5

    sub-int v13, v5, v9

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v1, v12

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    return v12
.end method

.method private refreshDualScreenFocus()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->getItemIndexFromDualScreenFocusPath()I

    move-result v0

    const-string/jumbo v1, "SearchViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshDualScreenFocus :: focus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateDualScreenFocus(I)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "SearchViewState"

    const-string/jumbo v2, "refreshDualScreenFocus :: mMediaItemAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SearchViewState"

    const-string/jumbo v2, "refreshDualScreenFocus :: mComposeView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;IZLcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectAllPostProcess()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;IZLcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V
    .locals 9

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    sub-int v1, p2, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_8

    if-eqz p3, :cond_2

    if-gtz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->showMaximumSelectionNumberExceeded(I)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v6, v6, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_7

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a049e

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, p1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v1, v1, -0x1

    if-eqz p4, :cond_4

    const-wide/16 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p4, v6, v7, v8}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->increaseProgress(JZ)V

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    invoke-virtual {p4, v6, v7, v8}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->increaseProgress(JZ)V

    goto :goto_2

    :cond_8
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->setFinishingState()V

    goto :goto_0
.end method

.method private sendSearchResultResponse()V
    .locals 11

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v1

    if-lez v1, :cond_5

    new-array v0, v7, [I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getImageAndVideoCount([I)V

    aget v2, v0, v9

    aget v4, v0, v10

    if-nez v4, :cond_2

    if-le v2, v10, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0521

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Items_count"

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "SearchViewResult"

    if-lez v1, :cond_6

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_1
    invoke-static {v6, v7, v5, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a051f

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    if-le v4, v10, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0522

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Items_count"

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0520

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0523

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Items_count"

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a051d

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_1
.end method

.method private setActionBarBGColor(F)V
    .locals 8

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const v2, 0x7f020046

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    float-to-double v4, p1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setElevation(F)V

    goto :goto_0

    :cond_2
    const v2, 0x7f020048

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b029d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_2
.end method

.method private showMaximumSelectionNumberExceeded(I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0490

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0254

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract checkSearchResult()V
.end method

.method protected abstract createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
.end method

.method protected abstract exitSelectionMode()V
.end method

.method protected getActionbarOverFlow(I)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "action_bar"

    const-string/jumbo v7, "id"

    const-string/jumbo v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-nez v4, :cond_0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    :cond_0
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousActivityState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    if-nez v2, :cond_1

    instance-of v4, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getPreviousOverFlow()Landroid/view/View;

    move-result-object v2

    :cond_1
    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mOverFlowView:Landroid/view/View;

    goto :goto_0
.end method

.method protected getComposeAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method public getCurrentItemMediaId()I
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "latest_detail_item_media_id"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "SearchViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CURRENT ITEM ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected getInputMethodHeight()I
    .locals 5

    :try_start_0
    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;->isInputMethodShown(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mInputMethodHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SearchViewState"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getItemIndexFromDualScreenFocusPath()I
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    const-string/jumbo v1, "SearchViewState"

    const-string/jumbo v2, "refreshDualScreenFocus item null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SearchViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshDualScreenFocus path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v1

    goto :goto_0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchTagController()Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-object v0
.end method

.method public isRelatedSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mIsRelatedSearch:Z

    return v0
.end method

.method public minimizeSoftInput()V
    .locals 3

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mIsInputMethodShown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->minimizeSoftInput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SearchViewState"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDirty()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->reloadData(Z)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDirty()V

    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x22

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->setImeVisibility(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->setFocusToSearchView(Z)V

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v4, 0x22b

    if-ne p1, v4, :cond_3

    if-ne p2, v5, :cond_3

    const-string/jumbo v4, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mVoiceRecog:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v4, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->onVoiceResult(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->updateKeyword(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v4, 0xc00

    if-ne p1, v4, :cond_0

    if-ne p2, v5, :cond_0

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v6

    aput-object p3, v2, v7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "START_ALBUM_OPERATIONS"

    invoke-virtual {v4, v5, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "DC_NLG_REQUEST"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sendNlgRequest(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    goto :goto_0
.end method

.method protected refreshActionBarTheme(I)V
    .locals 3

    const-string/jumbo v0, "SearchViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshActionBarTheme style ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected selectAll()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v1, 0x1f4

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_3

    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0, v2, v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;IZ)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    :goto_3
    const/4 v4, 0x0

    invoke-direct {p0, v2, v1, v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;IZLcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->selectAllPostProcess()V

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3
.end method

.method protected selectMedia(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->selectMedia(Lcom/sec/android/gallery3d/data/MediaItem;IZ)V

    return-void
.end method

.method protected selectMedia(Lcom/sec/android/gallery3d/data/MediaItem;IZ)V
    .locals 12

    const/4 v9, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    move-object v1, p1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v6, v6, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v6, v9, :cond_5

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_3

    const/16 v0, 0x1f4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    if-lt v6, v0, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->showMaximumSelectionNumberExceeded(I)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v6, v5, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a049e

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a040f

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->toggle(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v7

    if-ne v6, v7, :cond_8

    move v3, v4

    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v6, v6, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v6, v9, :cond_9

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    const/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6, v5, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    if-nez p3, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v2, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a040e

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    goto :goto_2

    :cond_8
    move v3, v5

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_4
.end method

.method protected setEmptyHistoryText(III)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;III)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setEmptyHistoryText(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setFocusToSearchView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->setFocusToSearchView(Z)V

    :cond_0
    return-void
.end method

.method public setImeVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->setImeVisibility(Z)V

    :cond_0
    return-void
.end method

.method protected setOverFlowColor(F)V
    .locals 11

    const v8, 0x7f0a0266

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->getActionbarOverFlow(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f10018f

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f100017

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->getMiddleColor(FII)I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mOriginalOverflowBg:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mIsFinishingState:Z

    if-nez v8, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mOriginalOverflowBg:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mIsFinishingState:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mOriginalOverflowBg:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mOriginalOverflowBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->ApplyShowButtonShapesForGrace:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-boolean v8, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_4

    const v0, 0x7f02009c

    :goto_1
    instance-of v8, v3, Landroid/widget/TextView;

    if-eqz v8, :cond_a

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    invoke-interface {v7, v8}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->clearAllTextEffect(Landroid/widget/TextView;)V

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f02009b

    goto :goto_1

    :cond_5
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_6

    const v0, 0x7f020099

    :goto_2
    goto :goto_1

    :cond_6
    const v0, 0x7f020098

    goto :goto_2

    :cond_7
    const v0, 0x7f020276

    goto :goto_1

    :cond_8
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-nez v8, :cond_9

    const v0, 0x7f020273

    goto :goto_1

    :cond_9
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x101045c

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v2, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1

    :cond_a
    instance-of v8, v3, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    move-object v8, v3

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public setShareState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mIsShareState:Z

    return-void
.end method

.method protected setUpBtnColor(F)V
    .locals 11

    const v8, 0x7f0a02b2

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->getActionbarUpButton(I)Landroid/widget/ImageButton;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f10018f

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f100012

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->getMiddleColor(FII)I

    move-result v3

    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-nez v8, :cond_2

    const v0, 0x7f020273

    :goto_1
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_3

    instance-of v8, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_1

    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v3, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_2
    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x101045c

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v2, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2
.end method

.method protected showDeleteDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    return-void
.end method

.method protected showNoResultView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected startDetailViewInUIThread(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->startDetailViewInUIThread(IZ)V

    return-void
.end method

.method protected abstract startDetailViewInUIThread(IZ)V
.end method

.method public startDetailViewViaSmartView(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 6

    const-string/jumbo v4, "SearchViewState"

    const-string/jumbo v5, "startDetailViewViaSmartView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    const-string/jumbo v4, "SearchViewState"

    const-string/jumbo v5, "fail to start detailview via smartview. item is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    const-string/jumbo v4, "SearchViewState"

    const-string/jumbo v5, "fail to start detailview via smartview. itemCode is -1)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startDetailViewImmediate(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "SearchViewState"

    const-string/jumbo v5, "fail to start enlarge anim"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->startDetailViewInUIThread(IZ)V

    goto :goto_0
.end method

.method protected unSelectAll()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v3, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v3, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    invoke-virtual {p0, v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0
.end method

.method protected updateCountOnActionBar()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v3, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, v2, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method protected updateDualScreenFocus(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    sput-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->refreshDualScreenFocus()V

    return-void
.end method

.method protected abstract updateKeyword(Ljava/lang/String;)V
.end method
