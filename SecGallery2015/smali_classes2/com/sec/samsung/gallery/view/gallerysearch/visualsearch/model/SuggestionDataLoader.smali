.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
.source "SuggestionDataLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/MediaChanger;


# instance fields
.field private mMediaId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mMediaId:I

    return-void
.end method

.method private addBlurredCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mMediaId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addRecentCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addRecentlyAddedCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentlyAddedSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentlyAddedSuggestionLoader;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addSmileCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addTimeCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mMediaId:I

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addVideoCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method


# virtual methods
.method protected addSubCategory(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addRecentlyAddedCategory(Ljava/util/List;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addVideoCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addSmileCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addBlurredCategory(Ljava/util/List;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addTimeCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addLocationCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->addRecentCategory(Ljava/util/List;)V

    return-void
.end method

.method public setMediaId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->mMediaId:I

    return-void
.end method
