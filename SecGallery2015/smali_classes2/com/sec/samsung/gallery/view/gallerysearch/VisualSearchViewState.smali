.class public Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;
.super Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;
.source "VisualSearchViewState.java"


# static fields
.field private static final ADD_EVENT_RESULT_OK:I = 0x3

.field private static final EVENT_EDIT_PEOPLE_NAME:I = 0x0

.field private static final EVENT_MERGE_PEOPLE_NAME:I = 0x1

.field private static final FEATURE_IS_NOS:Z

.field private static final FEATURE_IS_NOS_TABLET:Z

.field private static final FEATURE_IS_TABLET:Z

.field private static final FEATURE_SHOW_STATUS_BAR:Z

.field private static final FEATURE_SUPPORT_KNOX_DESKTOP:Z

.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final FEATURE_USE_NAVIGATION_BAR:Z

.field private static final FEATURE_USE_SERVER_BASED_SEARCH:Z

.field private static final KEY_IS_MY_PROFILE:Ljava/lang/String; = "is_my_profile"

.field private static final KEY_IS_SEARCH_KEYWORD_SUGGESTION_VIEW:Ljava/lang/String; = "is_search_keyword_suggestion_view"

.field private static final KEY_IS_SEARCH_RECOMMEND_VIEW:Ljava/lang/String; = "is_search_recommend_view"

.field private static final KEY_IS_SIP_SHOWN:Ljava/lang/String; = "is_sip_shown"

.field private static final KEY_NEED_TO_UPDATE_PHOTO:Ljava/lang/String; = "need_to_update_photo"

.field private static final KEY_SELECTED_FACE_NAME:Ljava/lang/String; = "selected_face_name"

.field private static final KEY_SELECTED_FACE_PERSON_ID:Ljava/lang/String; = "selected_face_person_id"

.field private static final KEY_SELECTED_FACE_RAW_ID:Ljava/lang/String; = "selected_face_raw_id"

.field private static final KEY_TEMP_KEYWORD:Ljava/lang/String; = "temp_keyword"

.field private static final REQUEST_ADD_TAG:I = 0x971

.field private static final REQUEST_EVENT_LIST:I = 0xc6f

.field private static final REQUEST_FACE_TAG:I = 0xc70

.field private static final TAG:Ljava/lang/String; = "VisualSearchViewState"

.field private static final THRESHOLD_SHOW_CLEAR_HISTORY_VIEW:I = 0x1


# instance fields
.field private mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

.field private mClearHistoryListButton:Landroid/widget/Button;

.field private mClearHistoryListView:Landroid/view/View;

.field private mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

.field private mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

.field private mFilter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHistoryListView:Landroid/view/View;

.field private mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

.field private mInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

.field private mIsFromMoreInfo:Z

.field private mIsNeedToReloadVisualSearchView:Z

.field private mIsNeedToShowSIP:Z

.field private mIsNeedToShowSuggestionView:Z

.field private mIsRestored:Z

.field private mIsSearching:Z

.field private mKeywordSuggestionList:Landroid/widget/ListView;

.field private mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

.field private mKeywordSuggestionView:Landroid/view/View;

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private mMoreInfoCategory:Ljava/lang/String;

.field private mMoreInfoLocationType:I

.field private mMoreInfoPersonName:Ljava/lang/String;

.field private mMoreInfoSubCategory:Ljava/lang/String;

.field private mMoreInfoTranslatedName:Ljava/lang/String;

.field private mPreviousOverFlow:Landroid/view/View;

.field private mRecentSearchSection:Ljava/lang/String;

.field private mRecommendList:Landroid/widget/ListView;

.field private mRecommendView:Landroid/view/View;

.field private final mSearchViewExitMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private final mSearchViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

.field private mSuggestListView:Landroid/view/View;

.field private mSuggestionDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

.field private mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

.field private mSuggestionSection:Ljava/lang/String;

.field private mVCServiceConnectionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

.field private mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

.field private mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_TABLET:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS_TABLET:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_SHOW_STATUS_BAR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_SUPPORT_KNOX_DESKTOP:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseServerBasedSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_DEVICE_COG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToReloadVisualSearchView:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToShowSIP:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToShowSuggestionView:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsRestored:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsSearching:Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListButton:Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionSection:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecentSearchSection:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListView:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListView:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mPreviousOverFlow:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestListView:Landroid/view/View;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVCServiceConnectionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;

    const-string/jumbo v1, "GALLERY_SEARCH_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;

    const-string/jumbo v1, "GALLERY_SEARCH_VIEW_EXIT"

    invoke-direct {v0, p0, v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchViewExitMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$12;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$12;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$36;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$36;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->selectMedia(I)V

    return-void
.end method

.method static synthetic access$10200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->selectMedia(I)V

    return-void
.end method

.method static synthetic access$10900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->selectMedia(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateSuggestionListView()V

    return-void
.end method

.method static synthetic access$11000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateClearHistoryListView()V

    return-void
.end method

.method static synthetic access$13000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateHistoryListView()V

    return-void
.end method

.method static synthetic access$14000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$14100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$14200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$14400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->selectMedia(I)V

    return-void
.end method

.method static synthetic access$14800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$15200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$15300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$15400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$15500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$15600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$15700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$15800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->startDetailViewInUIThread(I)V

    return-void
.end method

.method static synthetic access$15900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->clearHistoryList()V

    return-void
.end method

.method static synthetic access$16000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setEmptyHistoryText(III)V

    return-void
.end method

.method static synthetic access$16300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$16500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$16600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsSearching:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    return-void
.end method

.method static synthetic access$17000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$17100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$17200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$17300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$17400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$17500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$17600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$17700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$17800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$17900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setSearchingState(Z)V

    return-void
.end method

.method static synthetic access$18000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateRecommendView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$18200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$18300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->startDetailViewState(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$18500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$18600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$18700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$18802(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsMovableKeypad:Z

    return p1
.end method

.method static synthetic access$18900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    return-void
.end method

.method static synthetic access$19002(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsInputMethodShown:Z

    return p1
.end method

.method static synthetic access$19100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$19200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$19300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setUpBtnColor(F)V

    return-void
.end method

.method static synthetic access$19400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setOverFlowColor(F)V

    return-void
.end method

.method static synthetic access$19500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    return-object v0
.end method

.method static synthetic access$19600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Lcom/sec/android/gallery3d/data/MediaItem;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->selectMedia(Lcom/sec/android/gallery3d/data/MediaItem;IZ)V

    return-void
.end method

.method static synthetic access$19700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->startDetailViewInUIThread(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToReloadVisualSearchView:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToReloadVisualSearchView:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->isDesktopMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateSecondViewLayout(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->insertSearchByCategorySALog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/util/AddItemToChannel;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Lcom/sec/samsung/gallery/util/AddItemToChannel;)Lcom/sec/samsung/gallery/util/AddItemToChannel;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getItemIndexFromDualScreenFocusPath()I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mInputMethodHeight:I

    return p1
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5600()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_TABLET:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsMovableKeypad:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mInputMethodHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mInputMethodHeight:I

    return p1
.end method

.method static synthetic access$6100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->adjustSipSize()V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setEmptyHistoryText(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setEmptyHistoryText(III)V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateViewVisibility()V

    return-void
.end method

.method static synthetic access$6600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$6802(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$6900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$7302(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$7400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$7502(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mShrinkOption:I

    return p1
.end method

.method static synthetic access$7600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$7700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$7902(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFilter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$8102(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->selectMedia(I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showKeywordSuggestionView()V

    return-void
.end method

.method static synthetic access$9000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$9100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$9400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$9500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method private adjustSipSize()V
    .locals 13

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b01fd

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getTopMarginHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getInputMethodHeight()I

    move-result v2

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v4

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b080b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    const v12, 0x7f120233

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    float-to-int v9, v11

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->isDesktopMode()Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/2addr v2, v4

    :cond_0
    :goto_1
    add-int v11, v6, v2

    add-int/2addr v11, v1

    add-int/2addr v11, v9

    if-ge v11, v0, :cond_1

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v11, v5, v6, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    sget-boolean v11, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v7

    if-lez v2, :cond_4

    sub-int/2addr v2, v8

    :cond_4
    const/4 v11, 0x1

    if-ne v7, v11, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    const/4 v11, 0x3

    if-ne v7, v11, :cond_6

    move v5, v4

    goto :goto_1

    :cond_6
    add-int/2addr v2, v4

    goto :goto_1
.end method

.method private cancelKeywordSuggestionFilter()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFilter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFilter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->cancelFiltering()V

    :cond_0
    return-void
.end method

.method private changeActionBarViewBG(Z)V
    .locals 12

    const-wide/16 v10, 0x1f4

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "action_bar"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getMainView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getMainView()Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$31;

    invoke-direct {v4, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$31;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x106000d

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeClearHistoryButtonBackground()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledShowButtonShapes:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListButton:Landroid/widget/Button;

    const v4, 0x7f0202a5

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101030e

    aput v3, v0, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private checkCategoryNameAndCount(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->checkCategoryNameAndCount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkCategoryViewState()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getVisualSearchVisibleItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showRecommendView(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setNoItemMode(Z)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0a02d6

    const v1, 0x7f100183

    const v2, 0x7f0b01d2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setEmptyHistoryText(III)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showNoItemView(Z)V

    goto :goto_0
.end method

.method private checkHandleCardFoldOperation(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getCardAdapter()Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->checkCategoryNameAndCount(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a05b7

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    const-string/jumbo v2, "CardName"

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleCardFoldOperation(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkSelectItemForDetailView(ILjava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->startDetailViewInUIThread(I)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private clearHistoryList()V
    .locals 4

    const-string/jumbo v1, "308"

    const-string/jumbo v2, "4705"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->deleteAllItems()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a05ad

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "ClearSearchHistory"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void
.end method

.method private clearHistoryListFromBixby()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a05ac

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "ClearSearchHistory"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->clearHistoryList()V

    goto :goto_0
.end method

.method private enterSelectionMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setImeVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->EDIT:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->logDCEnterSelectionMode(Ljava/lang/String;)V

    return-void
.end method

.method private getKeywordToVideoPlay(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v1, "Time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getFromTimeInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_3

    const-string/jumbo v1, "Location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "Related locations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-nez p1, :cond_0

    const-string/jumbo v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getTopMarginHeight()I
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v0

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS_TABLET:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v0

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_SHOW_STATUS_BAR:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private handleCardFoldOperation(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->cardFoldOperation(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "CardUnfold"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a05b9

    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, p1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_1
    return-void

    :cond_0
    const v1, 0x7f0a05bc

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "CardUnfold"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a05b8

    :goto_2
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, p1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0a05bb

    goto :goto_2
.end method

.method private handleDeleteKeyword()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v3, v3, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->removeKeyword()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "SearchView"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0a0854

    :goto_0
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showRecommendView(Z)V

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "DeleteKeyword"

    invoke-static {v3, v4, v2, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void

    :cond_1
    const v3, 0x7f0a0856

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "SearchView"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0a051c

    :goto_2
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_1

    :cond_3
    const v3, 0x7f0a0855

    goto :goto_2
.end method

.method private handleEventKeywordChanged(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->isSearchingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$34;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$34;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private handleEventKeywordSubmitted(Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "SEVI"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setSearchingState(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagListMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->setTagListMap(Ljava/util/LinkedHashMap;)V

    :cond_0
    return-void
.end method

.method private handleEventShowRecommendList(Lcom/sec/samsung/gallery/core/Event;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$29;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$29;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleInsertKeyword(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleEventKeywordChanged(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setTitleText(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setFocusToSearchView(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private handleMultiKeywordSubmitted(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "SEVI"

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setSearchingState(Z)V

    sget-object v0, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v3

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    return-void
.end method

.method private handlePeopleName(I)V
    .locals 4

    sget-object v1, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_SEARCH_FACE_TAG:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0x75

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v2, v3, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->startSearchFaceTag(I)V

    goto :goto_0
.end method

.method private handleUpdateFaceName()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearFaceObjImage()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getPersonName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setFaceObjName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private hideKeywordSuggestionView()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showKeywordSuggestionView(Z)V

    return-void
.end method

.method private initHistoryListView()V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04007b

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListView:Landroid/view/View;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListView:Landroid/view/View;

    const v3, 0x7f120132

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->registerHistoryItemObserver(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryItemObserver;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040078

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListView:Landroid/view/View;

    const v2, 0x7f12012b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListButton:Landroid/widget/Button;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$7;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$7;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initKeywordSuggestionListView()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04007d

    move-object v3, v4

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->setDataLoader(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    const v5, 0x7f120136

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02029e

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/AndroidListScrollFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/AndroidListScrollFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/AndroidListScrollInterface;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionList:Landroid/widget/ListView;

    invoke-interface {v2, v3, v7}, Lcom/sec/samsung/gallery/lib/libinterface/AndroidListScrollInterface;->setEnableFastScroll(Landroid/widget/ListView;Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionList:Landroid/widget/ListView;

    invoke-interface {v2, v3, v7}, Lcom/sec/samsung/gallery/lib/libinterface/AndroidListScrollInterface;->setEnableGoToTop(Landroid/widget/ListView;Z)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionList:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$8;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$8;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    return-void
.end method

.method private initNoItemView()V
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_TABLET:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040118

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getMainView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    :cond_0
    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_TABLET:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    const v4, 0x7f120235

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$26;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$26;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    const v4, 0x7f120233

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040117

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    goto :goto_0
.end method

.method private initRecommendView()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04007e

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->initSuggestListView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->initHistoryListView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->initKeywordSuggestionListView()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0435

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionSection:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a034c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecentSearchSection:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionSection:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    invoke-virtual {v1, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecentSearchSection:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    invoke-virtual {v1, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    const v3, 0x7f120137

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListView:Landroid/view/View;

    invoke-virtual {v1, v3, v2, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getTopMarginHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v1, v5, v0, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v1, v5, v0, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS_TABLET:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateListViewSideMargin()V

    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showRecommendView(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->hideKeywordSuggestionView()V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getMainView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    goto/16 :goto_0
.end method

.method private initSearchView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f1200d5

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->init(Landroid/os/HandlerThread;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->initNoItemView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->initRecommendView()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->checkSearchResult()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->isDesktopMode()Z

    move-result v0

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateSecondViewLayout(Z)V

    :cond_5
    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->changeClearHistoryButtonBackground()V

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->initGlRootView(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    :cond_7
    return-void
.end method

.method private initSuggestListView()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestListView:Landroid/view/View;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040081

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestListView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestListView:Landroid/view/View;

    const v2, 0x7f12013d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentItemMediaId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->setDataLoaderListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->setDataLoader(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->registerSuggestItemObserver(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestItemObserver;)V

    goto :goto_0
.end method

.method private insertSearchByCategorySALog()V
    .locals 2

    const-string/jumbo v0, "308"

    const-string/jumbo v1, "4704"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isDesktopMode()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_SUPPORT_KNOX_DESKTOP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSearchingState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsSearching:Z

    return v0
.end method

.method private logDCStateForSearchResult(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SearchViewResult"

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SearchViewResult"

    const-string/jumbo v1, "SearchView"

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "gallery_search_keyword"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCOutputParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private prepareActionBar()V
    .locals 6

    const v5, 0x7f0a0266

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v3, :cond_4

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVoiceRecog:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->EDIT:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onResume()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateCountOnActionBar()V

    :cond_0
    :goto_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->refreshActionBarTheme(I)V

    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getActionbarOverFlow(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mOverFlowView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mPreviousOverFlow:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getActionbarOverFlow(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mPreviousOverFlow:Landroid/view/View;

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->refreshActionBarThemeForVisualSearch(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->NORMAL:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVoiceRecog:Z

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->changeActionBarViewBG(Z)V

    :cond_8
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    goto :goto_3
.end method

.method private refreshActionBarThemeForVisualSearch(I)V
    .locals 3

    const-string/jumbo v0, "VisualSearchViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshActionBarThemeForVisualSearch style ["

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$35;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$35;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerSIPBroadcastReceiver(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$32;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$32;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "ResponseAxT9InfoTypeChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSIPBroadcastReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private saveOrRestoreSearchInfo(Landroid/os/Bundle;Z)V
    .locals 4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object p1, v0, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "SEARCH_INFO_SAVE_RESTORE"

    invoke-virtual {v2, v3, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private searchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "People"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseSearchFaceObj:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->setVisualSearchTagFilter(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-virtual {v12, v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->setVisualSearchTagFilter(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateCategory()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setSearchingState(Z)V

    const/4 v10, 0x0

    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->getSearchKeyword()Ljava/lang/String;

    move-result-object v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v8

    instance-of v2, v8, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v2, :cond_2

    move-object/from16 v18, v8

    check-cast v18, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v10, :cond_11

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setBlockTextChange(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setTitleText(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->clearOldFilterText()V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setBlockTextChange(Z)V

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->getSearchKeyword()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setFocusToSearchView(Z)V

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v2, :cond_3

    move-object/from16 v17, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$11;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagListMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->setTagListMap(Ljava/util/LinkedHashMap;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "People"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "Related people"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_6
    const/4 v10, 0x1

    :goto_4
    const-string/jumbo v2, "Time"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string/jumbo v2, "Other Documents"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "Recently Added"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "Camera mode"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "Smile pictures"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "Blurry pictures"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_7
    const/4 v9, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getTagName()Ljava/lang/String;

    move-result-object v16

    if-nez v10, :cond_f

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->isAvailableTransition(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_8
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v11, :cond_a

    :cond_9
    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_a
    :goto_6
    if-eqz v16, :cond_b

    const-string/jumbo v2, "-\n"

    const-string/jumbo v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_b
    if-nez v9, :cond_10

    if-nez v10, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->insertHistoryItem(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleUpdateFaceName()V

    goto/16 :goto_1

    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v9, 0x0

    goto :goto_5

    :cond_f
    if-eqz p4, :cond_a

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v16, p4

    goto :goto_6

    :cond_10
    if-eqz p4, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->insertHistoryItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setTitleText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setFocusToSearchView(Z)V

    goto/16 :goto_3
.end method

.method private searchByKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v6, "SEVI"

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    iput-boolean v7, v5, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseSearchFaceObj:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->updateHistoryList()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->clearFilterList()V

    iput v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRemoveCountUpdateMessage:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v5, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->addKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->updateKeyword(Ljava/lang/String;Z)V

    if-nez p3, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v5, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->insertHistoryItem(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->checkSearchResult()V

    :cond_1
    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    move-object v3, p1

    if-eqz p2, :cond_2

    move-object v3, p2

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v5, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v5, :cond_3

    move-object v4, v0

    check-cast v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setFocusToSearchView(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagListMap()Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->setTagListMap(Ljava/util/LinkedHashMap;)V

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v6, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$33;

    invoke-direct {v6, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$33;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getAllCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->checkSelectItemForDetailView(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched()V

    const-string/jumbo v2, "VisualSearchViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no matched media type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private selectLatestDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V
    .locals 9

    new-instance v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v6, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCurrentInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget v6, v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mActiveStart:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    iget v6, v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mActiveEnd:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    sub-int v6, v1, v5

    if-le p2, v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "DetailView"

    invoke-static {v6, v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v5

    :goto_1
    if-gt v2, v1, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-ne v0, p2, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->startDetailViewInUIThread(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForEnterDetailView()V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched()V

    const-string/jumbo v6, "VisualSearchViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no matched media type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getAllCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->checkSelectItemForDetailView(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched()V

    const-string/jumbo v2, "VisualSearchViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no matched media type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSearchingState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsSearching:Z

    return-void
.end method

.method private showKeywordSuggestionView()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showKeywordSuggestionView(Z)V

    return-void
.end method

.method private showKeywordSuggestionView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showNoItemView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$27;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$27;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showRecommendView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startDetailViewState(IZ)Z
    .locals 12

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0a0516

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v10, "DetailView"

    sget-object v11, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v9, v10, v11, v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "Time"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "Other Documents"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_1
    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v9, "People"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "Related people"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_2
    const/4 v3, 0x1

    :goto_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->insertHistoryItem(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->updateHistoryList()V

    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getKeywordToVideoPlay(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_b

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setVisibility(I)V

    :cond_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v9}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_4
    const/4 v7, 0x0

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_6
    const-string/jumbo v9, "VisualSearchViewState"

    const-string/jumbo v10, "cannot start animation to DetailView. bitmap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v9, p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v10

    invoke-virtual {v9, v7, v10}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "expansion_detail_view"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    const-string/jumbo v9, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "KEY_MEDIA_SET_PATH"

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "KEY_ITEM_POSITION"

    invoke-virtual {v0, v9, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v9

    instance-of v9, v9, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v9, :cond_8

    const-string/jumbo v9, "disable_map_moreinfo"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v9

    const-class v10, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v9, v10, v0, p2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_b
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getScreenNailImage()Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_4

    :cond_d
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_5
.end method

.method private startHandlerThread()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "VisualSearchLoadData"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    return-void
.end method

.method private startSearchFaceTag(I)V
    .locals 6

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->getSearchKeyword()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    aput-object v1, v2, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getFaceItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "START_VISUAL_SEARCH_FACE_TAG"

    invoke-virtual {v4, v5, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private stopHandlerThread()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method private updateCategory()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v1, :cond_0

    iput v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRemoveCountUpdateMessage:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->reloadData(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->updateKeyword(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateClearHistoryListView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mClearHistoryListView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHistoryListView()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecentSearchSection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->existSection(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecentSearchSection:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecentSearchSection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->removeSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateKeywordSuggestionView(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFilter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFilter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->cancelFiltering()V

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFilter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFilter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->setFilterListener(Landroid/widget/Filter$FilterListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mFilter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->filter(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateListViewSideMargin()V
    .locals 8

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->useTabletGUI()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    div-int/lit8 v2, v3, 0x2

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendList:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionList:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateRecommendView(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentItemMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->setMediaId(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->loadData()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mHistoryListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->updateHistoryList()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showRecommendView(Z)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateKeywordSuggestionView(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setNoItemMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showRecommendView(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->hideKeywordSuggestionView()V

    goto :goto_0
.end method

.method private updateSecondViewLayout(Z)V
    .locals 8

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getTopMarginHeight()I

    move-result v5

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move v1, v3

    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v7, v4, v5, v2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v7, v4, v5, v2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    if-eqz v0, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    if-eqz v0, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    move v4, v3

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_0
.end method

.method private updateSuggestionListView()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionSection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->existSection(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionSection:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSuggestionSection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->removeSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateView(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showRecommendView(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->isSearchingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateKeywordSuggestionView(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->cancelKeywordSuggestionFilter()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->hideKeywordSuggestionView()V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->logDCStateForSearchResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateRecommendView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateViewVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$25;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$25;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected checkSearchResult()V
    .locals 9

    const v8, 0x7f0a02f2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentState()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setNoItemMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v5, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-nez v5, :cond_3

    :cond_2
    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showNoItemView(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v5, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setNoItemMode(Z)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSearchText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->exitSelectionMode()V

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setNoItemMode(Z)V

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->isSearchKeyEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->getOldSearchText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->getOldSearchText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_7
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->getSearchKeyword()Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    sget-boolean v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_TABLET:Z

    if-eqz v5, :cond_9

    sget-boolean v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS:Z

    if-nez v5, :cond_9

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showNoResultView(Z)V

    :goto_1
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showNoItemView(Z)V

    goto/16 :goto_0

    :cond_9
    const v0, 0x7f100001

    const v4, 0x7f0b01d2

    invoke-virtual {p0, v8, v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setEmptyHistoryText(III)V

    goto :goto_1

    :cond_a
    const v3, 0x7f0a02d6

    const v0, 0x7f100183

    sget-boolean v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_TABLET:Z

    if-eqz v5, :cond_b

    const v4, 0x7f0b0201

    :goto_2
    invoke-virtual {p0, v3, v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setEmptyHistoryText(III)V

    goto :goto_1

    :cond_b
    const v4, 0x7f0b01d2

    goto :goto_2

    :cond_c
    sget-boolean v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_TABLET:Z

    if-eqz v5, :cond_d

    sget-boolean v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS:Z

    if-nez v5, :cond_d

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showNoResultView(Z)V

    goto :goto_1

    :cond_d
    const v0, 0x7f100001

    const v4, 0x7f0b01d2

    invoke-virtual {p0, v8, v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setEmptyHistoryText(III)V

    goto :goto_1
.end method

.method protected createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->EDIT:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    goto :goto_0
.end method

.method protected exitSelectionMode()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->logDCExitSelectionMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;->NORMAL:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->createActionBar(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ActionBarMode;)Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setNoItemMode(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->clearSelectedCount()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_2
    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->resetDCShareParam()V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x4

    iput v4, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->refreshActionBarTheme(I)V

    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->refreshActionBarThemeForVisualSearch(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getVisualSearchVisibleItemCount()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->isSearchKeyEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v0, "SearchView"

    :goto_0
    return-object v0

    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsRelatedSearch:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, "RelatedImage"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "SearchView"

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "SearchEmptySelectedView"

    :goto_1
    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SearchSelectedView"

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseSearchFaceObj:Z

    if-eqz v1, :cond_3

    const-string/jumbo v0, "SearchResultPeople"

    :goto_2
    goto :goto_0

    :cond_3
    const-string/jumbo v0, "SearchViewResult"

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "SearchView"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "SearchView"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "SearchViewResult"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "SuggestedWordsHistoryView"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method public getPreviousOverFlow()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mPreviousOverFlow:Landroid/view/View;

    return-object v0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v0, "308"

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "312"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "309"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "308"

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "311"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "310"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "People"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "313"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getmModelListener()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->exitSelectionMode()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsFromMoreInfo:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getCount(I)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->isSearchKeyEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->removeKeyword()V

    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->resetSearchData()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->checkCategoryViewState()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->hideKeywordSuggestionView()V

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showRecommendView(Z)V

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v1, :cond_8

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    :cond_8
    const-string/jumbo v1, "SearchView"

    const-string/jumbo v2, "SearchViewResult"

    invoke-static {v1, v2}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    :cond_b
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showRecommendView(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->checkCategoryViewState()V

    :cond_c
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->hideKeywordSuggestionView()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->removeKeyword()V

    :cond_d
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->checkCategoryViewState()V

    :cond_e
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsFinishingState:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->refreshActionBarThemeForVisualSearch(I)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsRelatedSearch:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    :cond_10
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->onConfigurationChanged()V

    :cond_0
    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getTopMarginHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v3, v2, v0, v2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v3, v2, v0, v2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->refreshActionBarTheme(I)V

    :cond_3
    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_IS_NOS_TABLET:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateListViewSideMargin()V

    :cond_4
    return-void

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/high16 v8, 0x80000

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "VisualSearchViewState onCreate Start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDexInterface:Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getVisionCloudUtils()Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVCServiceConnectionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->setVCServiceConnectionListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;)V

    if-eqz p1, :cond_1

    const-string/jumbo v3, "KEY_IS_RELATED_SEARCH"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsRelatedSearch:Z

    const-string/jumbo v3, "SEARCH_CATEGORY"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoCategory:Ljava/lang/String;

    const-string/jumbo v3, "SEARCH_SUB_CATEGORY"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoSubCategory:Ljava/lang/String;

    const-string/jumbo v3, "SEARCH_LOCATION_TYPE"

    sget-object v4, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoLocationType:I

    const-string/jumbo v3, "SEARCH_PERSON_NAME"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoPersonName:Ljava/lang/String;

    const-string/jumbo v3, "SEARCH_TRANSLATED_NAME"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoTranslatedName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoCategory:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoSubCategory:Ljava/lang/String;

    if-eqz v3, :cond_1

    :cond_0
    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsFromMoreInfo:Z

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v3, :cond_2

    const-string/jumbo v3, "VisualSearchViewState"

    const-string/jumbo v4, "mRootView is null in VisualSearchViewState"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsFromMoreInfo:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    const-string/jumbo v4, "childrenmore"

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    new-instance v3, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$DataLoaderConfig;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$DataLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V

    invoke-direct {v3, v4, v1, v5, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v3, v8}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mPreviousViewMode:Ljava/lang/Class;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    iput-boolean v6, v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->mUseEnlargeAnim:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setSearchTagController(Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    :cond_3
    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    invoke-direct {v3, v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    new-instance v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setOnViewVisibilityListener(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;)V

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->registerSIPBroadcastReceiver(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchViewExitMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/VisualSearchViewDCHandler;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    new-instance v3, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->startHandlerThread()V

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "VisualSearchViewState onCreate End"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    const-string/jumbo v4, "children"

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentTopSetPath:Ljava/lang/String;

    goto/16 :goto_2
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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    return-void
.end method

.method public onDestroy()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "VisualSearchViewState onDestroy Start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->registerSIPBroadcastReceiver(Z)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->shutDownThreadPool()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setImeVisibility(Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getMainView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getMainView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mPreviousViewMode:Ljava/lang/Class;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mPreviousViewMode:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->clearFilterList()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->releaseInstance()V

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->onDestroy()V

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->clear()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "GALLERY_SEARCH_VIEW_EXIT"

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->stopHandlerThread()V

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "VisualSearchViewState onDestroy End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onDestroy()V

    return-void

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onDisplayChanged(I)V
    .locals 3

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->isDesktopMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateSecondViewLayout(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->updateCardListViewMargin(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetNavigationBarPosition(Z)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v4, "VisualSearchViewState onPause Start"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsShareState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isForcePause()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsShareState:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumCopyMove:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsShareState:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->getVoiceSearchState()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsShareState:Z

    if-nez v1, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->changeActionBarViewBG(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f1000ab

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    aget v2, v0, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPause()V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setGenericMotionTitleFocus(I)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->saveCurrentScrollInfo()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->pause()V

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "GALLERY_SEARCH_VIEW"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->unbindService()V

    :cond_6
    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onPause()V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "VisualSearchViewState onPause End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    move v1, v2

    goto/16 :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget v1, p3, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->startSearchFaceTag(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x75
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->saveOrRestoreSearchInfo(Landroid/os/Bundle;Z)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo v4, "is_search_recommend_view"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v4, "is_search_keyword_suggestion_view"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v4, "is_sip_shown"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v4, "temp_keyword"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToShowSuggestionView:Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_2

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToShowSIP:Z

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSearchText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setOldFilterText(Ljava/lang/String;)V

    :cond_3
    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsRestored:Z

    return-void
.end method

.method public onResume()V
    .locals 19

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "VisualSearchViewState onResume Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setVisibility(I)V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->bindService()V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsRestored:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsRestored:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->notifyDirty()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->reloadData()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "gallerSearchViewMode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;->setInitialLevel(I)V

    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getThumbSizeType(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setInitThumbType(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v5, 0x1

    :goto_0
    or-int/lit16 v5, v5, 0x80

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mShrinkOption:I

    or-int/2addr v5, v1

    :cond_2
    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$ComposeViewConfig;

    invoke-direct/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->setFirstIndex(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->onResume()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->initSearchView()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->prepareActionBar()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f1000ab

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v2, 0x1

    aget v2, v14, v2

    const/4 v3, 0x2

    aget v3, v14, v3

    const/4 v4, 0x3

    aget v4, v14, v4

    const/4 v6, 0x0

    aget v6, v14, v6

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSearchText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSearchText()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getSearchMoveListener()Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setSearchMoveListener(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->onConfigurationChanged()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->isDesktopMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->updateCardListViewMargin(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsShareState:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isForceResume()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsShareState:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToShowSuggestionView:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToShowSuggestionView:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateRecommendView(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v12

    instance-of v1, v12, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    if-eqz v1, :cond_7

    move-object/from16 v18, v12

    check-cast v18, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->getSearchKeyword()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setTitleText(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoSubCategory:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoCategory:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoCategory:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoSubCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoLocationType:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoPersonName:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoSubCategory:Ljava/lang/String;

    :cond_8
    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->FEATURE_SHOW_STATUS_BAR:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :cond_9
    invoke-super/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onResume()V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "VisualSearchViewState onResume End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setSearchingState(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoSubCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mMoreInfoTranslatedName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->saveOrRestoreSearchInfo(Landroid/os/Bundle;Z)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v3, "is_search_recommend_view"

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "is_search_keyword_suggestion_view"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "is_sip_shown"

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsInputMethodShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "temp_keyword"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mTempKeyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 26

    invoke-super/range {p0 .. p3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->onStateResult(IILandroid/content/Intent;)V

    const/16 v22, 0xc6f

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/16 v22, 0x1

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_0

    const-string/jumbo v22, "dc_story_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1

    const-string/jumbo v22, "dc_story_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v22, "state_story"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v14, v0, [Ljava/lang/Object;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    aput-object v23, v14, v22

    const/16 v22, 0x1

    aput-object v10, v14, v22

    const/16 v22, 0x2

    aput-object v15, v14, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v22, v0

    const-string/jumbo v23, "DC_CREATE_STORY"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v22, "newAlbumName"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v10}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->prepareCreateChannelDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v22, 0x3

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a0471

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v22, "selected_channel_id"

    const/16 v23, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    new-instance v22, Lcom/sec/samsung/gallery/util/AddItemToChannel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/sec/samsung/gallery/util/AddItemToChannel;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->goToChannelDetailView(I)V

    goto/16 :goto_0

    :cond_5
    const/16 v22, 0xc70

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    if-eqz p3, :cond_0

    const-string/jumbo v22, "is_my_profile"

    const/16 v23, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v22, "need_to_update_photo"

    const/16 v23, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string/jumbo v22, "selected_face_person_id"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    const-string/jumbo v22, "selected_face_raw_id"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    const-string/jumbo v22, "selected_face_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getTagName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getPersonName()Ljava/lang/String;

    move-result-object v13

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getFaceItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v7

    :cond_6
    const/16 v22, 0x9

    move/from16 v0, v22

    new-array v12, v0, [Ljava/lang/Object;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    aput-object v23, v12, v22

    const/16 v22, 0x1

    aput-object v16, v12, v22

    const/16 v23, 0x2

    if-eqz v13, :cond_7

    const/16 v22, 0x1

    :goto_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v12, v23

    const/16 v22, 0x3

    aput-object v17, v12, v22

    const/16 v22, 0x4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v12, v22

    const/16 v22, 0x5

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v12, v22

    const/16 v22, 0x6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v12, v22

    const/16 v22, 0x7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v12, v22

    const/16 v22, 0x8

    aput-object v7, v12, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v22

    const-string/jumbo v23, "VISUAL_SEARCH_FACE_TAGGING"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const/16 v22, 0x0

    goto :goto_1

    :cond_8
    const-string/jumbo v22, "VisualSearchViewState"

    const-string/jumbo v23, "search album is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v22, "VisualSearchViewState"

    const-string/jumbo v23, "selected face name is empty"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const/16 v22, 0x971

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/16 v22, -0x1

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v11, v0, [Ljava/lang/Object;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    aput-object v23, v11, v22

    const/16 v22, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    const-string/jumbo v24, "add_tag_value"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v11, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v22, v0

    const-string/jumbo v23, "EVENT_ADD_TAG"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onViewInitialize()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItemVI()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToShowSIP:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToShowSIP:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$15;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$15;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnEnlargeAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$16;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$16;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnShrinkAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$17;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$17;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$18;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$18;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$19;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$19;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$20;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$21;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$22;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$22;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$23;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$23;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$24;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$24;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleUpdateFaceName()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateViewVisibility()V

    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method public resetSearchData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->clearFilterList()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->resetSelectedItem()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public setPromptRequest(IILjava/lang/Object;)V
    .locals 3

    move-object v0, p3

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/16 v1, 0x20

    :goto_0
    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mShrinkOption:I

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected startDetailViewInUIThread(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$30;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;IZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 26

    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v6

    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_KEYWORD_CHANGED:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_1

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleEventKeywordChanged(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_KEYWORD_SUBMITTED:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_2

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleEventKeywordSubmitted(Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v22, "VisualSearchViewState"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showDeleteDialog()V

    goto :goto_0

    :cond_3
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->selectAll()V

    goto :goto_0

    :cond_4
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->unSelectAll()V

    goto :goto_0

    :cond_5
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_PRESS_VOICE_SEARCH:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->setVoiceSearchState(Z)V

    goto :goto_0

    :cond_6
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_SEARCH_RECOMMEND_LIST:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleEventShowRecommendList(Lcom/sec/samsung/gallery/core/Event;)V

    goto/16 :goto_0

    :cond_9
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v24, v0

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v25, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_a
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ALL_WTIH_CONTENT_TYPE:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v24, v0

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v25, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ALL_WITH_PARAMETER:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_b
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_DETAILVIEW:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v24, v0

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v25, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_c
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->getOldSearchText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchText(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->enterSelectionMode()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_d
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ENTER_EMPTY_SELECTION:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->getOldSearchText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchText(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->enterSelectionMode()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_e
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHARE_VIA_MESSAGE:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_11

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_f
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_10
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    aput-object v23, v17, v22

    const/16 v22, 0x1

    aput-object v21, v17, v22

    const/16 v22, 0x2

    const-string/jumbo v23, "image/*"

    aput-object v23, v17, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v22

    const-string/jumbo v23, "DC_SHARE_VIA_MESSAGE"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TO_EVENT:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v14, v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startEventChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SHARE_MODE:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->enterSelectionMode()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_13
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_UPDATE_SEARCH_KEYWORD:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_14

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleInsertKeyword(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_VISUAL_SEARCH_ENTER_REMOVE_FROM_RESULT:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActionBar:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->getOldSearchText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->enterSelectionMode()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_15
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_VISUAL_SEARCH_REMOVE_FROM_RESULT:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getTagName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getPersonName()Ljava/lang/String;

    move-result-object v18

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    aput-object v23, v17, v22

    const/16 v22, 0x1

    aput-object v4, v17, v22

    const/16 v22, 0x2

    aput-object v20, v17, v22

    const/16 v22, 0x3

    aput-object v18, v17, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v22

    const-string/jumbo v23, "VISUAL_SEARCH_REMOVE_FROM_RESULT"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->checkSearchResult()V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v22, "VisualSearchViewState"

    const-string/jumbo v23, "Unable to remove selected items from result. mSearchTagController is null."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_KEYWORD_SUBMITTED:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_19

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v0, v22

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v22, 0x0

    aget-object v12, v17, v22

    check-cast v12, Ljava/lang/String;

    const/16 v22, 0x1

    aget-object v10, v17, v22

    check-cast v10, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mInfo:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->checkMultiKeyword()Z

    move-result v22

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleMultiKeywordSubmitted(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleEventKeywordSubmitted(Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    goto/16 :goto_0

    :cond_19
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_VISUAL_SEARCH_DELETE_NAME:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getTagName()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    aput-object v23, v17, v22

    const/16 v22, 0x1

    aput-object v20, v17, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v22

    const-string/jumbo v23, "VISUAL_SEARCH_DELETE_NAME"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v22, "VisualSearchViewState"

    const-string/jumbo v23, "Unable to delete name. mSearchTagController is null."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SUGGEST_KEYWORDS_HISTORY:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_1c

    const-string/jumbo v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateRecommendView(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SuggestedWordsHistoryView"

    sget-object v24, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static/range {v22 .. v24}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_0

    :cond_1c
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CLEAR_SEARCH_HISTORY:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->clearHistoryListFromBixby()V

    goto/16 :goto_0

    :cond_1d
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHARE:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto/16 :goto_0

    :cond_1e
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_DELETE_KEYWORDS:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handleDeleteKeyword()V

    goto/16 :goto_0

    :cond_1f
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_20

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setGlComposeView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v22, v0

    check-cast v22, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentState()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/devicecog/gallery/touchevent/VisualSearchViewStateDCTouchEvent;->setCurrentVisualSearchStatus(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SEARCH_CARD_FOLD_OPERATION:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_21

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v0, v22

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v22, 0x0

    aget-object v19, v17, v22

    check-cast v19, Ljava/lang/String;

    const/16 v22, 0x1

    aget-object v5, v17, v22

    check-cast v5, Ljava/lang/String;

    const/16 v22, 0x2

    aget-object v22, v17, v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->checkHandleCardFoldOperation(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_21
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_MERGE_FACE_NAME:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handlePeopleName(I)V

    goto/16 :goto_0

    :cond_22
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_EDIT_FACE_NAME:I

    move/from16 v0, v22

    if-eq v9, v0, :cond_23

    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SEARCH_PEOPLE_NAME:I

    move/from16 v0, v22

    if-ne v9, v0, :cond_0

    :cond_23
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->handlePeopleName(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected updateKeyword(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
