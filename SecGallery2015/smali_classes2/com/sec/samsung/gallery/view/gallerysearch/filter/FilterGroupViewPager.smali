.class public Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "FilterGroupViewPager.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;,
        Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;
    }
.end annotation


# static fields
.field private static final MSG_TAG_LIST_REFRESH:I = 0x65

.field private static final TAG:Ljava/lang/String; = "FilterGroupViewPager"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mArrowView:Landroid/view/View;

.field private final mFilterClickListener:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;

.field private mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAlive:Z

.field private mNeedToRedrawArrowIcon:Z

.field private mNeedToRestorePanel:Z

.field private mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mParentFrame:Landroid/view/View;

.field private mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

.field private mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

.field private mUpdateTagTask:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mIsAlive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRedrawArrowIcon:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRestorePanel:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mAnchorView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mArrowView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mUpdateTagTask:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mFilterClickListener:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->initTagTask()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mIsAlive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRedrawArrowIcon:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRestorePanel:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mAnchorView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mArrowView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mUpdateTagTask:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mFilterClickListener:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->initTagTask()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mIsAlive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->updateItemsInDetailPagerView()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setArrowPosition(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->toggleTimeSelectedFilter(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-object v0
.end method

.method private changeDescription(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0405

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private findViewAndSetState(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->findViewByTagData(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p3}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method private initTagTask()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mIsAlive:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->setTagController(Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mUpdateTagTask:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;

    const-string/jumbo v1, "UpdateTagTask"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;Ljava/lang/String;Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mUpdateTagTask:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mUpdateTagTask:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->start()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mUpdateTagTask:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/DcmFilterTagCollector;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/DcmFilterTagCollector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    goto :goto_0
.end method

.method private isEnabledPage(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reloadAllItems()V
    .locals 4

    const-string/jumbo v2, "FilterGroupViewPager"

    const-string/jumbo v3, "reloadAllItems() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->getTagList(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setData(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mFilterClickListener:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setFilterClickListener(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->updateAnchorView()V

    return-void
.end method

.method private setArrowPosition(I)V
    .locals 10

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mAnchorView:Landroid/view/View;

    instance-of v8, v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mAnchorView:Landroid/view/View;

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ge p1, v2, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mAnchorView:Landroid/view/View;

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    mul-int v8, v1, v2

    sub-int v8, v6, v8

    div-int/lit8 v7, v8, 0x2

    div-int/lit8 v8, v1, 0x2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mArrowView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    if-nez p1, :cond_1

    sub-int v8, v1, v4

    add-int v3, v8, v7

    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mArrowView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mArrowView:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mArrowView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v8, p1, 0x1

    mul-int/2addr v8, v1

    sub-int/2addr v8, v4

    add-int v3, v8, v7

    goto :goto_0
.end method

.method private setEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setEnabled(Landroid/view/ViewGroup;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setVisibilityByCurrentItem(I)V
    .locals 6

    const v5, 0x7f050022

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    if-eqz v2, :cond_0

    sget v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->FILTER_PAGE_INDEX_MAX:I

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRestorePanel:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->isDisplaying()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050023

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setDisplay(Z)V

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setDisplay(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setDisplay(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050021

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2
.end method

.method private toggleTimeSelectedFilter(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->removeSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private updateAnchorView()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mAnchorView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mAnchorView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_7

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    if-eqz v2, :cond_0

    if-ne v2, v9, :cond_5

    const/4 v5, 0x2

    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v6, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->isEnabledPage(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Z

    move-result v1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setEnabled(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getCurrentItem()I

    move-result v6

    if-ne v6, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    if-nez v1, :cond_6

    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setVisibility(I)V

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRestorePanel:Z

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setEnabled(Z)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->changeDescription(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    mul-int/lit8 v5, v2, 0x2

    goto :goto_1

    :cond_6
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRestorePanel:Z

    if-eqz v6, :cond_2

    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setVisibility(I)V

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRestorePanel:Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method private updateItemState(Ljava/util/ArrayList;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;Z)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setUnselectedState()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setUnselectedState()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isTimeTag()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x0

    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v6, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v6

    invoke-direct {p0, v6, v1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->findViewAndSetState(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isEventTag()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v4, 0x2

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isLocationTag()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isPoiTag()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    const/4 v4, 0x3

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isPersonTag()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v4, 0x4

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isUserTag()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isTimeTag()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v4, 0x0

    :cond_c
    :goto_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v6, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v6

    invoke-direct {p0, v6, v1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->findViewAndSetState(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;Z)V

    goto :goto_4

    :cond_d
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isEventTag()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v4, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isLocationTag()Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v4, 0x2

    goto :goto_5

    :cond_f
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isPersonTag()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v4, 0x3

    goto :goto_5

    :cond_10
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->updateAnchorView()V

    return-void
.end method

.method private updateItemsInDetailPagerView()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->reloadAllItems()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getSelectedItem()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->updateItemState(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public getTagCount()I
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildCount()I

    move-result v1

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public init()V
    .locals 4

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getSearchTagController()Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    const v2, 0x7f1200fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mArrowView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mArrowView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public isFocusedLastLine()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->isFocusedLastLine()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRedrawArrowIcon:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mUpdateTagTask:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$UpdateTagTask;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mIsAlive:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRedrawArrowIcon:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setArrowPosition(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRedrawArrowIcon:Z

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mNeedToRedrawArrowIcon:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshTagList()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setVisibilityByCurrentItem(I)V

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setArrowPosition(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 3

    const-string/jumbo v0, "FilterGroupViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentItem() : item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setVisibilityByCurrentItem(I)V

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setArrowPosition(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mAnchorView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mAnchorView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mGroupPagerAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    :goto_2
    return-void

    :cond_2
    const v4, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    const/4 v3, 0x2

    :cond_4
    :goto_3
    if-eqz p1, :cond_8

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->isEnabledPage(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setEnabled(Z)V

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->isEnabledPage(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setEnabled(Landroid/view/ViewGroup;Z)V

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->changeDescription(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    mul-int/lit8 v3, v0, 0x2

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setEnabled(Z)V

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setEnabled(Landroid/view/ViewGroup;Z)V

    goto :goto_4

    :cond_9
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setEnabled(Z)V

    goto :goto_2
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mParentFrame:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :goto_0
.end method
