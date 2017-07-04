.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeparatedListAdapter.java"


# static fields
.field private static final TYPE_SECTION_HEADER:I


# instance fields
.field private final FEATURE_DREAM_GUI:Z

.field private final mHeaders:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredNameSection:Ljava/lang/String;

.field private final mSections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->FEATURE_DREAM_GUI:Z

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04007f

    const v2, 0x7f120138

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mHeaders:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a08b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mRegisteredNameSection:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mHeaders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public existSection(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getCount()I
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v6, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, v2, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->FEATURE_DREAM_GUI:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mRegisteredNameSection:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    :goto_3
    add-int/2addr v3, v4

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return v3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v2, v3, v5

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->FEATURE_DREAM_GUI:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mRegisteredNameSection:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    :goto_2
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    :goto_3
    return-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    goto :goto_2

    :cond_2
    if-ge p1, v4, :cond_4

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    :goto_4
    move-object v2, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_4
    sub-int/2addr p1, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v8, v3

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_5

    aget-object v2, v3, v7

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->FEATURE_DREAM_GUI:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mRegisteredNameSection:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    :goto_2
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    :goto_3
    return v6

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v9

    add-int/lit8 v4, v9, 0x1

    goto :goto_2

    :cond_2
    if-ge p1, v4, :cond_4

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v6

    :goto_4
    add-int/2addr v6, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v6, p1, -0x1

    invoke-interface {v0, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v6

    goto :goto_4

    :cond_4
    sub-int/2addr p1, v4

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, -0x1

    goto :goto_3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v2, v3, v6

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->FEATURE_DREAM_GUI:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mRegisteredNameSection:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    :goto_2
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mHeaders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v4, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    :goto_3
    return-object v6

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    goto :goto_2

    :cond_2
    if-ge p1, v5, :cond_4

    if-eqz v1, :cond_3

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_3

    :cond_3
    add-int/lit8 v6, p1, -0x1

    invoke-interface {v0, v6, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_3

    :cond_4
    sub-int/2addr p1, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSection(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mHeaders:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->mSections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->notifyDataSetChanged()V

    return-void
.end method
