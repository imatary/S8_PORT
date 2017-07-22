.class public Lcom/android/launcher3/appspicker/AppsPickerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsPickerListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsPickerListAdapter"


# instance fields
.field private mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

.field private mContext:Landroid/content/Context;

.field private mIsWhiteBg:Z

.field private mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field private mItemContainerClickListener:Landroid/view/View$OnClickListener;

.field private mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

.field private mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

.field private mMaxNumAppsPerRow:I

.field private mNumAppsPerRow:I

.field private mScreenMode:I

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsPerRow()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mScreenMode:I

    iput-boolean p3, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mIsWhiteBg:Z

    iget-boolean v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mIsWhiteBg:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->setContentColorAndBackground(Z)V

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$1;-><init>(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemContainerClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$2;-><init>(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    return-object v0
.end method

.method private createHolders(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;)[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    .locals 9

    const/4 v8, -0x2

    iget v5, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    new-array v1, v5, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    const/4 v2, 0x0

    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    const v5, 0x7f04000e

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;

    invoke-direct {v5}, Lcom/android/launcher3/appspicker/AppIconViewHolder;-><init>()V

    aput-object v5, v1, v2

    aget-object v5, v1, v2

    iput-object v3, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    aget-object v6, v1, v2

    const v5, 0x7f10002e

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    aget-object v6, v1, v2

    const v5, 0x7f10002f

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    aget-object v6, v1, v2

    const v5, 0x7f100030

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    aget-object v5, v1, v2

    iget v6, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mScreenMode:I

    iput v6, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->screenMode:I

    if-lez v2, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    aget-object v5, v1, v2

    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    aget-object v5, v1, v2

    iget-object v5, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    invoke-virtual {p2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private setContentColorAndBackground(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x7f0e0003

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mTextColor:I

    return-void

    :cond_0
    const v0, 0x7f0e0004

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAppsMapSize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 7

    const/4 v6, 0x0

    const-string v3, "AppsPickerListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItem position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getRowItems(I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iget-object v3, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v0, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAppsMapSize()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    if-nez p2, :cond_1

    const v2, 0x7f04000c

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f10002a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->createHolders(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;)[Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-result-object v8

    const v2, 0x7f10000a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const-string v17, ""

    const v2, 0x7f100009

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v2, :cond_2

    const/16 v2, 0x14

    const/4 v7, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v2, v7, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_1
    const v2, 0x7f10000b

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mTextColor:I

    invoke-virtual {v15, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getRowItems(I)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_3

    const-string v2, "AppsPickerListAdapter"

    const-string v7, "items is null"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object v8, v2

    check-cast v8, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    if-ge v9, v2, :cond_d

    aget-object v2, v8, v9

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setFocusable(Z)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object v8, v2

    check-cast v8, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    const v2, 0x7f10000a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    iget v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->screenMode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mScreenMode:I

    if-eq v2, v7, :cond_0

    const/16 p2, 0x0

    const v2, 0x7f04000c

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f10002a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->createHolders(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;)[Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-result-object v8

    const v2, 0x7f10000a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x14

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v2, v7, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    if-ge v9, v2, :cond_d

    const/4 v11, 0x0

    const/16 v16, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_4

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v11, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    :cond_4
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    if-ge v9, v2, :cond_a

    aget-object v2, v8, v9

    iput-object v11, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setFocusable(Z)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemContainerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    aget-object v7, v8, v9

    iget-object v7, v7, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    aget-object v7, v8, v9

    iget-object v7, v7, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    aget-object v2, v8, v9

    iput v9, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->colIndex:I

    aget-object v2, v8, v9

    move/from16 v0, p1

    iput v0, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->rowIndex:I

    if-lez v9, :cond_5

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v2, :cond_5

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, v11, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    aget-object v7, v8, v9

    iget-object v7, v7, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mIsWhiteBg:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v2, v7, v0}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, v11, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    invoke-interface {v2, v11}, Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;->isCheckedItem(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v12

    :cond_6
    if-eqz v12, :cond_9

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v18, v8, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f09009a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_7

    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    move-object/from16 v17, v0

    :cond_7
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    const/4 v7, 0x1

    if-lt v2, v7, :cond_8

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v7, v10, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v2, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v7, v10, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v14, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mTextColor:I

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_9
    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v18, v8, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f09006b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_a
    aget-object v2, v8, v9

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setFocusable(Z)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    if-ge v9, v2, :cond_c

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-lez v9, :cond_b

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v2, :cond_b

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_6
    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    :cond_c
    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-lez v9, :cond_b

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v2, :cond_b

    aget-object v2, v8, v9

    iget-object v2, v2, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_d
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mScreenMode:I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsPerRow()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    return-void
.end method

.method public setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    return-void
.end method
