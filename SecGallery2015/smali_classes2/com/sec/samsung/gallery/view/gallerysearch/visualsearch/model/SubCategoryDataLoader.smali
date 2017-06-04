.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
.source "SubCategoryDataLoader.java"


# static fields
.field private static final FEATURE_USE_DREAM_SEARCH_UI:Z

.field private static final FEATURE_USE_SERVER_BASE_SEARCH:Z

.field private static final TAG:Ljava/lang/String; = "SubCategoryDataLoader"


# instance fields
.field private mIsCategorySkipped:Z

.field private mIsFirstLoad:Z

.field private mIsSecondLoad:Z

.field private final mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->FEATURE_USE_DREAM_SEARCH_UI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseServerBasedSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->FEATURE_USE_SERVER_BASE_SEARCH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;-><init>(Landroid/content/Context;)V

    instance-of v0, p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getVisionCloudUtils()Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsCategorySkipped:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsFirstLoad:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsSecondLoad:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addDocumentCategory(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "Documents"

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->checkVisionCloudServiceReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "Documents"

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "Other Documents"

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "Documents"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->receiveSubCategoryItems(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private addLocationCategory(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "Location"

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->checkVisionCloudServiceReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Location"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    :cond_0
    return-void
.end method

.method private addMyTagCategory(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "My tags"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addOthersCategory(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "Others"

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->checkVisionCloudServiceReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Others"

    invoke-direct {v1, v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->FEATURE_USE_SERVER_BASE_SEARCH:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addPeopleCategory(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "People"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addTypeCategory(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyImageSuggestionLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyImageSuggestionLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "Burst Shot Modes"

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SEF Shot Modes"

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "Selfie Shot Modes"

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorShotModeLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "Camera mode"

    invoke-virtual {p0, v0, p1, v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->receiveSubCategoryItems(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method private checkVisionCloudServiceReady(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->FEATURE_USE_SERVER_BASE_SEARCH:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsFirstLoad:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SubCategoryDataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skip generating category ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]. Service is not prepared."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsCategorySkipped:Z

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method protected addSubCategory(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsFirstLoad:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsCategorySkipped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsSecondLoad:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsSecondLoad:Z

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->FEATURE_USE_DREAM_SEARCH_UI:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->addMyTagCategory(Ljava/util/List;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->addLocationCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->addPeopleCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->addDocumentCategory(Ljava/util/List;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->FEATURE_USE_DREAM_SEARCH_UI:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->addTypeCategory(Ljava/util/List;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->addOthersCategory(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsCategorySkipped:Z

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsFirstLoad:Z

    :cond_3
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsCategorySkipped:Z

    return-void
.end method

.method public isFirstLoadingState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;->mIsSecondLoad:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
