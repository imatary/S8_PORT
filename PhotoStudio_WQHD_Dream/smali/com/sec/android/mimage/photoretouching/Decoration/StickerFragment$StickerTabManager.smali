.class Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;
.super Ljava/lang/Object;
.source "StickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickerTabManager"
.end annotation


# instance fields
.field private mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Landroid/view/View;Landroid/support/v4/view/ViewPager;[II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0e01f8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;->FullScreenWidth:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setType(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$Type;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setTabsTextAllCaps(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setTabsTextBoldOnSelect(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setTabsTextSize(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->isDecorationTab(Z)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    aget v2, p4, v0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->addTab(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v1, p5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setTab(I)V

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setOnTabChangeListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public destroyAttachViewTabManager()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->setOnTabChangeListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->removeAllViews()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    :cond_1
    return-void
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$StickerTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
