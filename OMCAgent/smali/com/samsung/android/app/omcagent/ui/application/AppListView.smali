.class public Lcom/samsung/android/app/omcagent/ui/application/AppListView;
.super Landroid/widget/LinearLayout;
.source "AppListView.java"


# static fields
.field private static selectAll:Ljava/lang/String;


# instance fields
.field private mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

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

.field private mAppListView:Landroid/widget/ListView;

.field private mCntOfSelectedItems:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mLayoutSelectAll:Landroid/widget/LinearLayout;

.field private mListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSelectAll:Landroid/widget/CheckBox;

.field private maxCnt:I

.field private selectedCnt:I

.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView$3;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->calCntOfSelectedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->viewType:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectAll:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->maxCnt:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    return v0
.end method

.method static synthetic access$808(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    return v0
.end method

.method static synthetic access$810(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    return v0
.end method

.method private assignView()V
    .locals 1

    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;

    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mLayoutSelectAll:Landroid/widget/LinearLayout;

    return-void
.end method

.method private calCntOfSelectedItems()V
    .locals 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    iput v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->maxCnt:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v2

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v2

    const/16 v3, 0x194

    if-eq v2, v3, :cond_2

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->viewType:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isEnableCheckBox()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "essential_contents"

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->maxCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->maxCnt:I

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getAppItemUsingPosition(I)Lcom/samsung/android/app/omcagent/ui/application/AppItem;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    return-object v1
.end method


# virtual methods
.method public dimSelectAll()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "dimSelectAll "

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public disableSelectAll()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mLayoutSelectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public getAppAdapter()Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    return-object v0
.end method

.method public getAppList()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public installSelectedApps(I)Z
    .locals 13

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "Install Button Click"

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v6

    const-string v7, "resource"

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->getAppItemUsingPosition(I)Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "RESOURCE : set mandatory "

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ids : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " size : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ids2 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " size : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    if-eqz p1, :cond_5

    sget-object v7, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v10, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isFree(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/common/util/DeviceUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v7, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v7

    const/16 v10, 0xc8

    if-eq v7, v10, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v7

    const/16 v10, 0x64

    if-eq v7, v10, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v7

    const/16 v10, 0x6e

    if-eq v7, v10, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v7

    const/16 v10, 0x96

    if-eq v7, v10, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v7

    const/16 v10, 0xa0

    if-eq v7, v10, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v7

    const/16 v10, 0xaa

    if-eq v7, v10, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v7

    const/16 v10, 0xbe

    if-eq v7, v10, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v7

    const/16 v10, 0xc9

    if-ne v7, v10, :cond_3

    :cond_1
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getContentSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v10, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v8, v9}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->isMoreThan10MB(J)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->changeStateAppInfoToPause(Landroid/content/Context;Ljava/util/List;)V

    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    const-class v10, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;

    invoke-direct {v3, v7, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v7, 0x0

    :goto_2
    return v7

    :cond_5
    if-nez p1, :cond_6

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "in setupwizard, install mandatory contents"

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->installMandatoryContents(Landroid/content/Context;)V

    :cond_6
    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_d

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v7, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v2, :cond_7

    const-string v7, "essential_contents"

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v7, "resource"

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    iget-object v10, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->execute(Landroid/content/Context;)V

    goto :goto_4

    :cond_9
    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v10, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "AppInfo is null"

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v7

    const/16 v10, 0xc8

    if-eq v7, v10, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v7

    const/16 v10, 0x64

    if-eq v7, v10, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v7

    const/16 v10, 0x6e

    if-eq v7, v10, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v7

    const/16 v10, 0x96

    if-eq v7, v10, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v7

    const/16 v10, 0xa0

    if-eq v7, v10, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v7

    const/16 v10, 0xaa

    if-eq v7, v10, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v7

    const/16 v10, 0xbe

    if-eq v7, v10, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v7

    const/16 v10, 0xc9

    if-ne v7, v10, :cond_c

    :cond_b
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v10, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v11, v12}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->execute(Landroid/content/Context;ILjava/lang/String;)V

    const/16 v7, 0x64

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v10, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v10, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v12

    invoke-virtual {v7, v10, v11, v12}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_d
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "Set App Installation starting"

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v10, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->resetTimer(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setIsAppInstalling(Landroid/content/Context;)V

    if-eqz p1, :cond_e

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_e
    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;

    sget-object v10, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectAll:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v10, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readWatingWifiAppInfoListCnt_V4(Landroid/content/Context;)I

    move-result v7

    if-nez v7, :cond_10

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "remove notification - wait for wifi"

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v10, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->removeWaitWifi(Landroid/content/Context;Z)V

    :goto_5
    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->updateAppItemList(I)V

    :cond_f
    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_10
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "remain waiting apps"

    invoke-virtual {v7, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public setAppAdapter(Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    return-void
.end method

.method public setAppList(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public setStateToWaiting(Landroid/content/Context;)V
    .locals 12

    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v9, "setStateToWaiting"

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ids : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ids2 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v8, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v2, :cond_0

    const-string v8, "essential_contents"

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "resource"

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v9, "This is resource. do not need to change state."

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v8, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v9, "AppInfo is null"

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v8

    const/16 v9, 0x6e

    if-eq v8, v9, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v8

    const/16 v9, 0x96

    if-eq v8, v9, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v8

    const/16 v9, 0xa0

    if-eq v8, v9, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v8

    const/16 v9, 0xaa

    if-eq v8, v9, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v8

    const/16 v9, 0xbe

    if-ne v8, v9, :cond_5

    :cond_4
    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipped "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    sget-object v8, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Selected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const/16 v8, 0x4b

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    const/4 v6, 0x1

    sget-object v8, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I

    goto/16 :goto_1

    :cond_6
    sget-object v8, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateStateToWaitForMandatoryAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    const/4 v6, 0x1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pkg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v8, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v9, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->updateStateToWaitForMandatoryApp(Landroid/content/Context;)I

    if-eqz v6, :cond_8

    sget-object v8, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    invoke-virtual {v8, p1}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->waitingWifi(Landroid/content/Context;)V

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;

    sget-object v9, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectAll:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setup(Landroid/content/Context;Ljava/util/LinkedHashMap;I)V
    .locals 5
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

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->assignView()V

    iput p3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->viewType:I

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->viewType:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedHashMap;I)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectAll:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/app/omcagent/ui/application/AppListView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView$1;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->maxCnt:I

    iput v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    return-void
.end method

.method public setup(Landroid/content/Context;Ljava/util/LinkedHashMap;ILjava/util/LinkedHashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;I",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/ui/application/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->assignView()V

    iput p3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->viewType:I

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    iget v3, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->viewType:I

    invoke-direct {v0, v1, v2, p4, v3}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;-><init>(Landroid/content/Context;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;I)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mListViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectAll:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView$2;-><init>(Lcom/samsung/android/app/omcagent/ui/application/AppListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->maxCnt:I

    iput v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    return-void
.end method

.method public updateAppItemList(I)V
    .locals 7

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Update App Item List"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-nez v2, :cond_1

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appItem is null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isAppInstallStart(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v4, v2, v5, p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;ZI)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v4

    const/16 v5, 0x96

    if-ne v4, v5, :cond_0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v4, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->updateItemProgress(Landroid/content/Intent;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->updateSelectAllCheckBox()V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getInstalledAppCount(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->dimSelectAll()V

    :cond_3
    return-void
.end method

.method public updateAppItemListIcon(Landroid/content/Context;)V
    .locals 6

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Update App Item Icons"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->updateItemIcon(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateAppItemListIcon(Landroid/content/Context;I)V
    .locals 6

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Update App Item Icons"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    if-nez p2, :cond_1

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->updateItemIcon(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v4, p2, :cond_2

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableMandantoryAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableOptionalAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateAppItemStateAndAppItemList(I)V
    .locals 11

    const/16 v10, 0xc9

    const/16 v9, 0xc8

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "Update App Item List"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAvailableAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    invoke-static {v5, v6}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->checkAndUpdateAppItemListState(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/ui/application/AppItem;

    if-nez v2, :cond_1

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appItem is null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->getStateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isAppInstallStart(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleCheckBox()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v5

    if-eq v5, v9, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v5

    if-eq v5, v10, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isEnableCheckBox()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked()Z

    move-result v4

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isAppInstallStart(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v5, v2, v6, p1}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->setAppItemState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/ui/application/AppItem;ZI)V

    sget-object v5, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isAppInstallStart(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleCheckBox()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v5

    if-eq v5, v9, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->getState()I

    move-result v5

    if-eq v5, v10, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isEnableCheckBox()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIsChecked(Z)V

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v5

    const/16 v6, 0x96

    if-ne v5, v6, :cond_0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v5, v2}, Lcom/samsung/android/app/omcagent/ui/application/AppItemUtils;->updateItemProgress(Landroid/content/Intent;Lcom/samsung/android/app/omcagent/ui/application/AppItem;)V

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->sortList()V

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mAppAdapter:Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/ui/application/AppItemAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->updateSelectAllCheckBox()V

    sget-object v5, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getInstalledAppCount(Landroid/content/Context;)I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->dimSelectAll()V

    :cond_5
    return-void
.end method

.method public updateSelectAllCheckBox()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isInstalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->calCntOfSelectedItems()V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->viewType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selected Item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    iget v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->maxCnt:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->mCntOfSelectedItems:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppListView;->selectedCnt:I

    invoke-static {v1}, Lcom/samsung/android/common/util/GeneralUtils;->getNumWithRTL(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
