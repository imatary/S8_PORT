.class public Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DecorationViewPagerAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private imageLoader:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

.field private mAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/BaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;

.field private mNumColumn:I

.field private mPageViewsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

.field private menuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

.field sstate:I

.field private tabsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Ljava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;",
            ">;",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mPageViewsMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mAdapterMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->menuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->tabsInfo:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    invoke-direct {v0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private destroy(Landroid/widget/GridView;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->recycleAdapaterBitmap(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mAdapterMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mAdapterMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    instance-of v8, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    if-eqz v8, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v8

    if-ge v2, v8, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    const v8, 0x7f0e0425

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/GraphicUtils;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v8, 0x7f0e0426

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/GraphicUtils;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mPageViewsMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mPageViewsMap:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_3

    instance-of v8, v5, Landroid/widget/GridView;

    if-eqz v8, :cond_3

    check-cast v5, Landroid/widget/GridView;

    invoke-virtual {v5, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mPageViewsMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    iput-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mPageViewsMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mAdapterMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    iput-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mAdapterMap:Ljava/util/Map;

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    const-string v1, "~Rakesh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*--> destroyItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0e0203

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->destroy(Landroid/widget/GridView;)V

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mPageViewsMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->tabsInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mPageViewsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->tabsInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->tabsInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->tabsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->tabsInfo:Ljava/util/ArrayList;

    if-nez v15, :cond_0

    sget-object v15, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->TAG:Ljava/lang/String;

    const-string v16, "Tab info is NULL>>>>>>>>"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->tabsInfo:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    const v15, 0x7f030079

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v15, 0x7f0e0203

    invoke-virtual {v12, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->menuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getCurrentState()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mPageViewsMap:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageTitle()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v14

    const-wide v16, 0x3fe8f5c28f5c28f6L    # 0.78

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v2, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08057c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sub-int v3, v2, v11

    int-to-double v0, v14

    move-wide/from16 v16, v0

    const-wide v18, 0x3f989374bc6a7efaL    # 0.024

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v8, v0

    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x3f989374bc6a7efaL    # 0.024

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v7, v0

    const/4 v15, 0x0

    invoke-virtual {v6, v8, v7, v8, v15}, Landroid/widget/GridView;->setPadding(IIII)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->tabsInfo:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v15, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->setImageContext(ILjava/util/ArrayList;Landroid/widget/GridView;)V

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v14

    const-wide v16, 0x3fdc28f5c28f5c29L    # 0.44

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v2, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08057c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sub-int v3, v2, v11

    int-to-double v0, v14

    move-wide/from16 v16, v0

    const-wide v18, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v10, v0

    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v9, v0

    const/4 v15, 0x0

    invoke-virtual {v6, v10, v9, v10, v15}, Landroid/widget/GridView;->setPadding(IIII)V

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v14

    const-wide v16, 0x3fe199999999999aL    # 0.55

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v2, v0

    const/4 v11, 0x0

    sub-int v3, v2, v11

    int-to-double v0, v14

    move-wide/from16 v16, v0

    const-wide v18, 0x3f989374bc6a7efaL    # 0.024

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v8, v0

    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x3f989374bc6a7efaL    # 0.024

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v7, v0

    const/4 v15, 0x0

    invoke-virtual {v6, v8, v7, v8, v15}, Landroid/widget/GridView;->setPadding(IIII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->tabsInfo:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v15, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->setImageContext(ILjava/util/ArrayList;Landroid/widget/GridView;)V

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v14

    const-wide v16, 0x3fdc28f5c28f5c29L    # 0.44

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v2, v0

    const/4 v11, 0x0

    sub-int v3, v2, v11

    int-to-double v0, v14

    move-wide/from16 v16, v0

    const-wide v18, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v10, v0

    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v9, v0

    const/4 v15, 0x0

    invoke-virtual {v6, v10, v9, v10, v15}, Landroid/widget/GridView;->setPadding(IIII)V

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v14

    const-wide v16, 0x3fe199999999999aL    # 0.55

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v2, v0

    const/4 v11, 0x0

    sub-int v3, v2, v11

    int-to-double v0, v14

    move-wide/from16 v16, v0

    const-wide v18, 0x3f989374bc6a7efaL    # 0.024

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v8, v0

    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x3f989374bc6a7efaL    # 0.024

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v7, v0

    const/4 v15, 0x0

    invoke-virtual {v6, v8, v7, v8, v15}, Landroid/widget/GridView;->setPadding(IIII)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->tabsInfo:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v15, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->setImageContext(ILjava/util/ArrayList;Landroid/widget/GridView;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v15}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v14

    const-wide v16, 0x3fdc28f5c28f5c29L    # 0.44

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v2, v0

    const/4 v11, 0x0

    sub-int v3, v2, v11

    int-to-double v0, v14

    move-wide/from16 v16, v0

    const-wide v18, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v10, v0

    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v9, v0

    const/4 v15, 0x0

    invoke-virtual {v6, v10, v9, v10, v15}, Landroid/widget/GridView;->setPadding(IIII)V

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x80002 -> :sswitch_0
        0x80003 -> :sswitch_1
        0x8000a -> :sswitch_2
    .end sparse-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycleAdapaterBitmap(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    const v3, 0x7f0e0425

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setImageContext(ILjava/util/ArrayList;Landroid/widget/GridView;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;",
            ">;",
            "Landroid/widget/GridView;",
            ")V"
        }
    .end annotation

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->menuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->imageLoader:Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mResourceDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;-><init>(Landroid/content/Context;Landroid/widget/GridView;ILjava/util/ArrayList;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mAdapterMap:Ljava/util/Map;

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabInfo;->getPackageTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v16

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08057c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->menuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getCurrentState()I

    move-result v3

    const v4, 0x80002

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    const-wide v4, 0x3fe8f5c28f5c28f6L    # 0.78

    int-to-double v6, v15

    mul-double/2addr v4, v6

    double-to-int v10, v4

    sub-int v11, v10, v13

    move/from16 v0, v16

    int-to-double v4, v0

    const-wide v6, 0x3f70624dd2f1a9fcL    # 0.004

    mul-double/2addr v4, v6

    double-to-int v12, v4

    int-to-double v4, v11

    const-wide v6, 0x3f70624dd2f1a9fcL    # 0.004

    mul-double/2addr v4, v6

    double-to-int v14, v4

    :cond_0
    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setClipToPadding(Z)V

    const/high16 v3, 0x2000000

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->notifyDataSetChanged()V

    invoke-virtual/range {p3 .. p3}, Landroid/widget/GridView;->invalidateViews()V

    return-void

    :cond_1
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    const-wide v4, 0x3fdc28f5c28f5c29L    # 0.44

    int-to-double v6, v15

    mul-double/2addr v4, v6

    double-to-int v10, v4

    sub-int v11, v10, v13

    move/from16 v0, v16

    int-to-double v4, v0

    const-wide v6, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v4, v6

    double-to-int v12, v4

    int-to-double v4, v11

    const-wide v6, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v4, v6

    double-to-int v14, v4

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->menuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getCurrentState()I

    move-result v3

    const v4, 0x80003

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    const-wide v4, 0x3fe199999999999aL    # 0.55

    int-to-double v6, v15

    mul-double/2addr v4, v6

    double-to-int v11, v4

    move/from16 v0, v16

    int-to-double v4, v0

    const-wide v6, 0x3f70624dd2f1a9fcL    # 0.004

    mul-double/2addr v4, v6

    double-to-int v12, v4

    int-to-double v4, v11

    const-wide v6, 0x3f70624dd2f1a9fcL    # 0.004

    mul-double/2addr v4, v6

    double-to-int v14, v4

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    const-wide v4, 0x3fdc28f5c28f5c29L    # 0.44

    int-to-double v6, v15

    mul-double/2addr v4, v6

    double-to-int v11, v4

    move/from16 v0, v16

    int-to-double v4, v0

    const-wide v6, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v4, v6

    double-to-int v12, v4

    int-to-double v4, v11

    const-wide v6, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v4, v6

    double-to-int v14, v4

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->menuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getCurrentState()I

    move-result v3

    const v4, 0x8000a

    if-ne v3, v4, :cond_0

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mNumColumn:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    const-wide v4, 0x3fdc28f5c28f5c29L    # 0.44

    int-to-double v6, v15

    mul-double/2addr v4, v6

    double-to-int v11, v4

    move/from16 v0, v16

    int-to-double v4, v0

    const-wide v6, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v4, v6

    double-to-int v12, v4

    int-to-double v4, v11

    const-wide v6, 0x3f80624dd2f1a9fcL    # 0.008

    mul-double/2addr v4, v6

    double-to-int v14, v4

    goto/16 :goto_0
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->sstate:I

    return-void
.end method

.method public showSettingsPopup()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Mobile Data Disabled"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Mobile network is disabled.\nConnect to to a Wi-Fi network\ninstead, or enable Mobile\nnetwork and try again"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Enable"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter$2;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
