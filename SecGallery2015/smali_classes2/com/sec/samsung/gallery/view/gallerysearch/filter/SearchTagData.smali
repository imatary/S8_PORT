.class public Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;
.super Ljava/lang/Object;
.source "SearchTagData.java"


# instance fields
.field private mCategoryType:I

.field private mContext:Landroid/content/Context;

.field private mFilterType:I

.field private mIsEnabled:Z

.field private mObjects:[Ljava/lang/Object;

.field private mRawTagData:Ljava/lang/String;

.field private mTextTagData:Ljava/lang/String;

.field private mTextTagDataTranslation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->NONE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagDataTranslation:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mRawTagData:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mIsEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mCategoryType:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mObjects:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    iput p4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mCategoryType:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagDataTranslation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->NONE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagDataTranslation:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mRawTagData:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mIsEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mCategoryType:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mObjects:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    iput p4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mCategoryType:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagDataTranslation:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mObjects:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->NONE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagDataTranslation:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mRawTagData:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mIsEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mCategoryType:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mObjects:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mRawTagData:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mRawTagData:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mIsEnabled:Z

    :cond_0
    iput p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagDataTranslation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategoryType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mCategoryType:I

    return v0
.end method

.method public getFilterType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    const-string/jumbo v5, "profile/Me"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0256

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v0, v4

    :goto_1
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v0, v4

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    move-object v2, v3

    :goto_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_3
.end method

.method public getObjects()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mObjects:[Ljava/lang/Object;

    return-object v0
.end method

.method public getRawTagData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mRawTagData:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTagData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagData:Ljava/lang/String;

    return-object v0
.end method

.method public getTransTagText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mTextTagDataTranslation:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mIsEnabled:Z

    return v0
.end method

.method public isEventTag()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->EVENT:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationTag()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->LOCATION:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersonTag()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->PEOPLE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPoiTag()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeTag()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->TIME:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserTag()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->mFilterType:I

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->USERTAG:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
