.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
.source "KeySuggestionDataLoader.java"


# instance fields
.field private mKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private addAlbumCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

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

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, p1, v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addEventCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addFavoriteCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addImageCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyImageSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyImageSuggestionLoader;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyLocationSuggestionLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

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

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, p1, v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addTagCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyTagSuggestionLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

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

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, p1, v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

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

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addTagCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addLocationCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addEventCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addImageCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addVideoCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addAlbumCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addFavoriteCategory(Ljava/util/List;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addBlurredCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->addSmileCategory(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;)Z
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->mKeyword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/KeySuggestionDataLoader;->load()V

    const/4 v0, 0x1

    return v0
.end method
