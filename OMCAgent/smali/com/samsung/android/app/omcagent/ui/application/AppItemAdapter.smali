.class public Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppItemAdapter.java"


# instance fields
.field private expandedItemClickListener:Landroid/view/View$OnClickListener;

.field private expanderIconClickListener:Landroid/view/View$OnClickListener;

.field private isExpand:Z

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mAppList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mSUWEssAppList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedHashMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mSUWEssAppList:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$1;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->expanderIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$2;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->expandedItemClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iput p3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->viewType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mSUWEssAppList:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$1;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->expanderIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter$2;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->expandedItemClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mSUWEssAppList:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iput p4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->viewType:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->isExpand:Z

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_1

    :cond_0
    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v12, "AppList is null"

    invoke-virtual {v11, v12}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    move-object/from16 v3, p2

    :goto_0
    return-object v3

    :cond_1
    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->size()I

    move-result v11

    if-lt p1, v11, :cond_2

    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v12, "position is invalid"

    invoke-virtual {v11, v12}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    iget v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->viewType:I

    if-nez v11, :cond_5

    const-string v11, "essential_contents"

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f04000d

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v11, 0x7f0e0037

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v11, 0x7f0e0035

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v11, 0x7f0e0036

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->expanderIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->isExpand:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0012

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v11, 0x7f02002d

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mSUWEssAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mSUWEssAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_1
    array-length v11, v6

    if-ge v5, v11, :cond_4

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mSUWEssAppList:Ljava/util/LinkedHashMap;

    aget-object v12, v6, v5

    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040008

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->expandedItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->updateView(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)V

    move-object/from16 v11, p2

    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0016

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/support/v4/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v11, 0x7f02002f

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    move-object/from16 v3, p2

    goto/16 :goto_0

    :cond_5
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;

    if-nez v11, :cond_7

    :cond_6
    iget v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->viewType:I

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040008

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_7
    :goto_2
    move-object/from16 v11, p2

    check-cast v11, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;

    iget-object v12, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemView;->updateView(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)V

    move-object/from16 v0, p3

    instance-of v11, v0, Landroid/widget/AbsListView;

    if-eqz v11, :cond_8

    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked()Z

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {v0, p1, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_8
    move-object/from16 v3, p2

    goto/16 :goto_0

    :cond_9
    iget-object v11, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040009

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_2
.end method

.method public isExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->isExpand:Z

    return v0
.end method

.method public setIsExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->isExpand:Z

    return-void
.end method

.method public sortList()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_0
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "mAppList is null"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v3

    const/16 v4, 0xc9

    if-eq v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public sortList(Lcom/samsung/android/app/omcagent/ui/application/AppItem;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "mAppList is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
