.class Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;
.super Ljava/lang/Object;
.source "AttachSheetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachViewTabManager"
.end annotation


# instance fields
.field private mCategoryIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;Landroid/view/View;Landroid/support/v4/view/ViewPager;I)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mCategoryTabs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mCategoryIndex:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->isVisiableHelpText:Z
    invoke-static {p1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;Z)Z

    const v0, 0x7f0e00e3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;->FullScreenWidth:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->setType(Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$Type;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->addTab(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    const v1, 0x7f070121

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->addTab(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->setTab(I)V

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->selectCameraTab()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->setOnTabChangeListener(Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->setBackgrounColor()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->updateTab(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;)Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    return-object v0
.end method

.method private updateTab(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iput p1, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->selectCameraTab()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->updateExpandValueOfFragments(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->checkCameraPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->showPermissionDialog()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mContext:Landroid/content/Context;

    const-string v1, "D100"

    const-string v2, "Image_GALLERY"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mContext:Landroid/content/Context;

    const-string v1, "D100"

    const-string v2, "Image_CAMERA"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroyAttachViewTabManager()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mCategoryTabs:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mCategoryTabs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mCategoryTabs:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mViewPager:Landroid/support/v4/view/ViewPager;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mCategoryIndex:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mCategoryIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mCategoryIndex:Ljava/util/HashMap;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->setOnTabChangeListener(Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->removeAllViews()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    :cond_3
    return-void
.end method

.method public selectCameraTab()V
    .locals 10

    const v9, 0x7f080528

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080529

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v0, v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mPagersAdapter:Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;

    invoke-virtual {v5, v8}, Lcom/sec/android/mimage/photoretouching/lpe/attach/PagersAdapter;->showTabSpace(Z)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewPager:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;

    invoke-virtual {v5, v8, v8, v8, v8}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachViewPager;->setPadding(IIII)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->setBackgrounColor()V

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    if-nez v5, :cond_3

    invoke-virtual {v1, v0, v8, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v0, v7, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public setBackgrounColor()V
    .locals 3

    const/16 v2, 0xff

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mAttachViewCategory:I

    if-nez v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->attachViewTabContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public updateLayout()V
    .locals 7

    const v6, 0x7f080528

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->mTabContainer:Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/attach/MaterialTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e0437

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080389

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$AttachViewTabManager;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateViewGroupParamsForView(Landroid/content/Context;Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
