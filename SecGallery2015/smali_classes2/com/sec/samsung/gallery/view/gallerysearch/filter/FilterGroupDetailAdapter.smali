.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilterGroupDetailAdapter.java"


# static fields
.field private static final MAX_TEXT_SIZE_RATIO:F = 1.2f


# instance fields
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSystemFontScale()F
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

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

.method private getTextColorByType()Landroid/content/res/ColorStateList;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10027f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mItems:Ljava/util/ArrayList;

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

    const v9, 0x3f99999a    # 1.2f

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isPersonTag()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f040067

    invoke-virtual {v2, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    if-eqz v0, :cond_1

    move-object v4, p2

    check-cast v4, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterDetailTextView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTransTagText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterDetailTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0127

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->getSystemFontScale()F

    move-result v3

    cmpl-float v6, v3, v9

    if-lez v6, :cond_7

    int-to-float v6, v1

    mul-float/2addr v6, v9

    invoke-virtual {v4, v8, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterDetailTextView;->setTextSize(IF)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->getTextColorByType()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterDetailTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTransTagText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterDetailTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isEnabled()Z

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isTimeTag()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isUserTag()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isLocationTag()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isPoiTag()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01b3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->isEventTag()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_7
    int-to-float v6, v1

    mul-float/2addr v6, v3

    invoke-virtual {v4, v8, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterDetailTextView;->setTextSize(IF)V

    goto/16 :goto_1
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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
