.class public abstract Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "SearchActionBar.java"


# instance fields
.field private mIsDoingVoiceSearch:Z

.field private mOldFilterText:Ljava/lang/String;

.field private mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mIsDoingVoiceSearch:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mOldFilterText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mOldFilterText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->initializeSearchView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private initializeSearchView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f12006f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSearchText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mOldFilterText:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mOldFilterText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mOldFilterText:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mOldFilterText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setImeVisibility(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setOnQueryTextListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setOnVoiceRecognitionListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnVoiceRecognitionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setOnUpdateHistoryListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnUpdateHistoryListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$5;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setOnRecommendListListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$OnRecommendListListener;)V

    goto :goto_0
.end method


# virtual methods
.method public clearOldFilterText()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mOldFilterText:Ljava/lang/String;

    return-void
.end method

.method protected abstract getBackgroundDrawable()I
.end method

.method protected abstract getBackgroundDrawableForLand()I
.end method

.method public getOldSearchText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mOldFilterText:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getSearchView()I
.end method

.method public getVoiceSearchState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mIsDoingVoiceSearch:Z

    return v0
.end method

.method public minimizeSoftInput()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->minimizeSoftInput()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->getBackgroundDrawable()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->getBackgroundDrawableForLand()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPause()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMassDialog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableClipboardEx:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ClipBoardManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ClipBoardManagerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/ClipBoardManagerInterface;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/ClipBoardManagerInterface;->isShowing(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$7;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$7;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mOldFilterText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchText(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$8;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$8;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onVoiceResult(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mIsDoingVoiceSearch:Z

    return-void
.end method

.method public removeKeyword()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$9;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$9;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setBlockTextChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setBlockTextChange(Z)V

    :cond_0
    return-void
.end method

.method public setFocusToSearchView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setFocusToSearchView(Z)V

    :cond_0
    return-void
.end method

.method public setHistoryQuery(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->setImeVisibility(Z)V

    return-void
.end method

.method public setImeVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setImeVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setOldFilterText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mOldFilterText:Ljava/lang/String;

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->setTitleText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVoiceSearchState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mIsDoingVoiceSearch:Z

    return-void
.end method

.method protected setupButtons()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar$6;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
