.class public abstract Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;
.super Landroid/widget/LinearLayout;
.source "SearchActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;,
        Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnUpdateHistoryListener;,
        Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnVoiceRecognitionListener;,
        Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final GOOGLE_SEARCH_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final MAX_INPUT_LENGTH:I = 0x64

.field private static final MSG_START_VOICE_SEARCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SearchActionBarView"

.field private static final USE_DREAM_SEARCH_VIEW_UX:Z

.field private static final VISUAL_SEARCH_CATEGORY_VIEW:I = 0x2

.field private static final VISUAL_SEARCH_UNKNOWN:I = -0x1

.field static final VOICE_RECOGNITION_REQUEST:I = 0x22b


# instance fields
.field private mBlockTextChange:Z

.field private mCancelButton:Landroid/widget/ImageView;

.field protected final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLengthFilter:Landroid/text/InputFilter$LengthFilter;

.field private mLongTextToast:Landroid/widget/Toast;

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnQueryChangeListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;

.field private mOnRecommendListListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;

.field private mOnUpdateHistoryListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnUpdateHistoryListener;

.field private mOnVoiceRecognitionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnVoiceRecognitionListener;

.field private mSearchTextView:Landroid/widget/EditText;

.field private mSearchView:Landroid/widget/SearchView;

.field private final mShowImeRunnable:Ljava/lang/Runnable;

.field private final mTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mVoiceButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->USE_DREAM_SEARCH_VIEW_UX:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mBlockTextChange:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mShowImeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$5;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->initSearchView()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mLongTextToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mLongTextToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->USE_DREAM_SEARCH_VIEW_UX:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mBlockTextChange:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mShowImeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mVoiceButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->startVoiceRecognitionActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->getCurrentSearchState()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnRecommendListListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mCancelButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->onSubmitQuery()V

    return-void
.end method

.method private getCurrentSearchState()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentState()I

    move-result v0

    :cond_0
    return v0
.end method

.method private initSearchView()V
    .locals 13

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v8, 0x7f04011c

    invoke-virtual {v1, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v8, 0x7f120060

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SearchView;

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, v12}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, v10}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, v10}, Landroid/widget/SearchView;->setFocusableInTouchMode(Z)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v8, v9}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->isGoogleSearchEnable()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "search"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    :cond_0
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableKeyBoard:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    new-instance v9, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$6;

    invoke-direct {v9, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$6;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)V

    invoke-virtual {v8, v9}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "android:id/search_plate"

    invoke-virtual {v8, v9, v11, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "android:id/search_src_text"

    invoke-virtual {v8, v9, v11, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, v6}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchTextView:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchTextView:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchTextView:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchTextView:Landroid/widget/EditText;

    new-array v9, v10, [Landroid/text/InputFilter;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    aput-object v10, v9, v12

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "android:id/search_voice_btn"

    invoke-virtual {v8, v9, v11, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mVoiceButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mVoiceButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "android:id/search_close_btn"

    invoke-virtual {v8, v9, v11, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mCancelButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mCancelButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v12}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setImeVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->updateButtons()V

    new-instance v8, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$7;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$7;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isGoogleSearchEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onSubmitQuery()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnQueryChangeListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setImeVisibility(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnQueryChangeListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->resetSearchData()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLastQueryText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setImeVisibility(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->updateButtons()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnQueryChangeListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnQueryChangeListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOldQueryText:Ljava/lang/CharSequence;

    :cond_3
    return-void
.end method

.method private startVoiceRecognitionActivity()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnVoiceRecognitionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnVoiceRecognitionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnVoiceRecognitionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnVoiceRecognitionListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnVoiceRecognitionListener;->onVoiceRecognitionStarted()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateButtons()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnUpdateHistoryListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnUpdateHistoryListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnUpdateHistoryListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnUpdateHistoryListener;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnUpdateHistoryListener;->showHistoryList()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract SALogging(Ljava/lang/String;)V
.end method

.method getQueryText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method minimizeSoftInput()V
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;

    invoke-direct {v3, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$9;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    return-void
.end method

.method protected abstract resetSearchData()V
.end method

.method setBlockTextChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mBlockTextChange:Z

    return-void
.end method

.method setFocusToSearchView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method setImeVisibility(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/InputMethodManagerFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$8;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;ZLcom/sec/samsung/gallery/lib/libinterface/InputMethodManagerInterface;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setOnQueryTextListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnQueryChangeListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;

    return-void
.end method

.method setOnRecommendListListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnRecommendListListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;

    return-void
.end method

.method setOnUpdateHistoryListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnUpdateHistoryListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnUpdateHistoryListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnUpdateHistoryListener;

    return-void
.end method

.method setOnVoiceRecognitionListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnVoiceRecognitionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mOnVoiceRecognitionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnVoiceRecognitionListener;

    return-void
.end method

.method setQuery(Ljava/lang/CharSequence;Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchTextView:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->onSubmitQuery()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SearchActionBarView"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setTitleText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x63

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mSearchTextView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method
