.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilterSelectedItemListAdapter.java"


# static fields
.field private static final MAX_TEXT_SIZE_RATIO:F = 1.2f

.field private static final TAG:Ljava/lang/String; = "FlterSelctItmLstAdpter"


# instance fields
.field private final DEFAULT_TEXT_COLOR:I

.field private mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBlackColorForTFT:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xdadadb

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->DEFAULT_TEXT_COLOR:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSystemFontScale()F
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "font_scale"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const v8, 0x3f99999a    # 1.2f

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04006c

    const/4 v5, 0x0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v5, 0x7f120043

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0143

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getSystemFontScale()F

    move-result v3

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f120100

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$2;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    if-eqz v0, :cond_0

    cmpl-float v5, v3, v8

    if-lez v5, :cond_2

    int-to-float v5, v1

    mul-float/2addr v5, v8

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTransTagText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->DEFAULT_TEXT_COLOR:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTransTagText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0405

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-object p2

    :cond_2
    int-to-float v5, v1

    mul-float/2addr v5, v3

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public resetData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
