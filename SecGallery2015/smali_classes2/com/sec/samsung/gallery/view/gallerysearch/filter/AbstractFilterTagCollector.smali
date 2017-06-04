.class public abstract Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;
.super Ljava/lang/Object;
.source "AbstractFilterTagCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;
    }
.end annotation


# static fields
.field private static final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation
.end field

.field private static final predefinedTimeTags:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mEventTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFinishInit:Z

.field mLocationTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation
.end field

.field mPersonTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation
.end field

.field private mPoiTagList:Ljava/util/ArrayList;
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

.field mTagListMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/core/SearchFilterType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimeTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation
.end field

.field private mUserTagTagList:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->BEFORE_YEAR:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const v2, 0x7f0a008c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->LAST_YEAR:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const v2, 0x7f0a008d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_SIX_MONTH:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const v2, 0x7f0a008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_MONTH:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const v2, 0x7f0a008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_WEEK:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const v2, 0x7f0a0090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPersonTagList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mEventTagList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mUserTagTagList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTimeTagList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPoiTagList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTagListMap:Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mIsFinishInit:Z

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private setTagData()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->setInitTagData()V

    return-void
.end method

.method private updatePredefinedTime()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/util/TimeUtil;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/util/TimeUtil;-><init>()V

    const-string/jumbo v4, ""

    const-string/jumbo v7, ""

    const-string/jumbo v1, ""

    sget-object v10, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    sget-object v10, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    sget-object v11, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$2;->$SwitchMap$com$sec$samsung$gallery$view$gallerysearch$filter$AbstractFilterTagCollector$PREDEFINED_TIME:[I

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->ordinal()I

    move-result v10

    aget v10, v11, v10

    packed-switch v10, :pswitch_data_0

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/sec/samsung/gallery/core/SearchFilterType;->TIME:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v11

    invoke-direct {v8, v10, v4, v11, v9}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-object v10, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v12, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_WEEK:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    invoke-virtual {v10, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOf7DaysAgo()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->endOfToday()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-object v10, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v12, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_MONTH:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    invoke-virtual {v10, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOf30DaysAgo()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->endOfToday()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-object v10, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v12, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_SIX_MONTH:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    invoke-virtual {v10, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOfPastMonths(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->endOfToday()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_3
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-object v10, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v12, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->LAST_YEAR:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    invoke-virtual {v10, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOfPastMonths(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->endOfToday()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_4
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-object v10, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->predefinedTimeTags:Ljava/util/LinkedHashMap;

    sget-object v12, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->BEFORE_YEAR:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    invoke-virtual {v10, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->getLastYear()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOfBeforeYear()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->endOfBeforeYear()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_0
    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected abstract addTagList(Ljava/lang/String;I[Ljava/lang/Object;)V
.end method

.method public getTagList(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTimeTagList:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mEventTagList:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPersonTagList:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mUserTagTagList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTimeTagList:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mEventTagList:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPersonTagList:Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method initTagList()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mIsFinishInit:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPersonTagList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mEventTagList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mUserTagTagList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->updatePredefinedTime()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTimeTagList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPoiTagList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTagListMap:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTagListMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->TIME:Lcom/sec/samsung/gallery/core/SearchFilterType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTimeTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTagListMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->EVENT:Lcom/sec/samsung/gallery/core/SearchFilterType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mEventTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTagListMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->LOCATION:Lcom/sec/samsung/gallery/core/SearchFilterType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTagListMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->PEOPLE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPersonTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTagListMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->USERTAG:Lcom/sec/samsung/gallery/core/SearchFilterType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mUserTagTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTagListMap:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/SearchFilterType;->POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPoiTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mIsFinishInit:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPersonTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mEventTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mUserTagTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPoiTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method protected abstract setInitTagData()V
.end method

.method public setTagController(Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-void
.end method

.method public updateTagList()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->setTagData()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mEventTagList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mEventTagList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mEventTagList:Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mEventTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPoiTagList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPoiTagList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPoiTagList:Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPoiTagList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mLocationTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPersonTagList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPersonTagList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPersonTagList:Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mPersonTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mUserTagTagList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mUserTagTagList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mUserTagTagList:Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mUserTagTagList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->setTagList(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->mTagListMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->setTagListMap(Ljava/util/LinkedHashMap;)V

    :cond_5
    return-void
.end method
