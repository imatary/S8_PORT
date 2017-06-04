.class public final Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;
.source "MoreInfoItemTextCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;
    }
.end annotation


# static fields
.field private static final POSITION_BACKGROUND:I = 0x64

.field private static final POSITION_ICON:I = 0x0

.field private static final POSITION_TEXTVIEW:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "TextCategoryAdapter"

.field private static final VIEW_CHILD_COUNT:I = 0x3

.field private static final mUseBlurBackground:Z


# instance fields
.field private mDeleteIcon:Landroid/widget/ImageView;

.field private final mRemoveClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mUseBlurBackground:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mRemoveClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->isEdited()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mUseBlurBackground:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->hideDeleteLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$301(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->initData(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    return-void
.end method

.method private getCategoryId(I)Ljava/lang/Integer;
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method private hideDeleteLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mActivity:Landroid/app/Activity;

    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_0

    const v3, 0x7f050010

    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/16 v3, 0x12d

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f050012

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$3;

    invoke-direct {v3, p0, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f05000c

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$4;

    invoke-direct {v3, p0, p3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    const v3, 0x7f05000f

    goto :goto_0
.end method

.method private isEdited()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDeleteLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mUseBlurBackground:Z

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mActivity:Landroid/app/Activity;

    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_1

    const v3, 0x7f05000e

    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/16 v3, 0xc8

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f050011

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f05000b

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    const v3, 0x7f05000d

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic editCancel()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->editCancel()V

    return-void
.end method

.method public editDone()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->isDataSetChanged()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->getBaseUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateCategoryType(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setVersion()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runCategoryTag()V

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "TextCategoryAdapter"

    const-string/jumbo v2, "Error during set category"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->getBaseUri()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3, v4}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->updateCategoryType(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setVersion()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runCategoryTag()V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "TextCategoryAdapter"

    const-string/jumbo v2, "Error during set category"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public bridge synthetic getCount()I
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getNoInfoString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->getNoInfoString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    :try_start_0
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    :cond_1
    :goto_2
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_2

    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v5, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    if-nez p2, :cond_0

    sget-boolean v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mUseBlurBackground:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400b0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    const v4, 0x7f1201cf

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    mul-int/lit8 v4, p1, 0x3

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setId(I)V

    :goto_1
    const v4, 0x7f1201cd

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    mul-int/lit8 v4, p1, 0x3

    add-int/lit16 v4, v4, 0xc8

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->getCategoryId(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const v4, 0x7f1201ce

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mDeleteIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mDeleteIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mDeleteIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mRemoveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mDeleteIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0358

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mDeleteIcon:Landroid/widget/ImageView;

    mul-int/lit8 v5, p1, 0x3

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    :goto_3
    sget-boolean v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mUseBlurBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->showDeleteLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-object p2

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400af

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    mul-int/lit8 v4, p1, 0x3

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    mul-int/lit8 v4, p1, 0x3

    add-int/lit16 v4, v4, 0xc8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_2

    :cond_6
    mul-int/lit8 v4, p1, 0x3

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mDeleteIcon:Landroid/widget/ImageView;

    goto :goto_3
.end method

.method public handleDeviceCogCategoryDelete()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mDeleteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mRemoveClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runMoreInfoEvent(II)V

    :cond_0
    return-void
.end method

.method public initData(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter$CategoryLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public bridge synthetic registerDataSetChangeListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->registerDataSetChangeListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method public bridge synthetic setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    return-void
.end method
