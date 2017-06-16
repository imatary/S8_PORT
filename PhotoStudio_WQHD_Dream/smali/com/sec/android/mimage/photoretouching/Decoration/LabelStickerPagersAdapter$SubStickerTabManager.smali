.class Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;
.super Ljava/lang/Object;
.source "LabelStickerPagersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubStickerTabManager"
.end annotation


# instance fields
.field private mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;Landroid/view/View;Landroid/support/v4/view/ViewPager;[III)V
    .locals 11

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v8, 0x7f0e0200

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    iput-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    sget-object v9, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;->FullScreenWidth:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setType(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setTabsTextAllCaps(Z)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setTabsTextBoldOnSelect(Z)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setTabsTextSize(F)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isDecorationTab(Z)V

    const/4 v1, 0x0

    :goto_0
    array-length v8, p4

    if-ge v1, v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    aget v9, p4, v1

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->addTab(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v8, p4

    if-ge v1, v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0800d8

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v8, 0x2

    move/from16 v0, p6

    if-ne v0, v8, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v8, v4, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v7

    mul-int/lit8 v8, v4, 0x2

    sub-int v6, v7, v8

    div-int/lit8 v8, v6, 0x4

    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v1, :cond_2

    move v8, v4

    :goto_3
    const/4 v9, 0x0

    array-length v10, p4

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_3

    :goto_4
    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v4, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    rem-int/lit8 v9, p5, 0xa

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setTab(I)V

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    new-instance v9, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;

    move/from16 v0, p5

    invoke-direct {v9, p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;I)V

    invoke-virtual {v8, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setOnTabChangeListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public destroyAttachViewTabManager()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setOnTabChangeListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->removeAllViews()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # invokes: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->setGridViewMargins(Landroid/content/res/Configuration;Landroid/widget/GridView;)V
    invoke-static {v8, p1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;Landroid/content/res/Configuration;Landroid/widget/GridView;)V

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0800d8

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v8

    sget-object v10, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->reqWaterMarkSubStickerTabs:[I

    array-length v10, v10

    if-ne v8, v10, :cond_1

    invoke-virtual {v2, v4, v9, v4, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v7

    mul-int/lit8 v8, v4, 0x2

    sub-int v6, v7, v8

    div-int/lit8 v8, v6, 0x4

    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v1, :cond_2

    move v8, v4

    :goto_3
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerPagersAdapter$SubStickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_3

    :goto_4
    invoke-virtual {v2, v8, v9, v4, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_2
    move v8, v9

    goto :goto_3

    :cond_3
    move v4, v9

    goto :goto_4

    :cond_4
    return-void
.end method
