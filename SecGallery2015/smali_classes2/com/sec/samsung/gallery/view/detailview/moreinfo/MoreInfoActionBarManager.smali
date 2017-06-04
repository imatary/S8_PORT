.class public abstract Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;
.super Ljava/lang/Object;
.source "MoreInfoActionBarManager.java"


# instance fields
.field private mActionBarView:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

.field private final mActivity:Landroid/app/Activity;

.field private final mAvtionView:Landroid/view/View;

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040052

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mAvtionView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method


# virtual methods
.method createCustomMenuItem(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mAvtionView:Landroid/view/View;

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0200a8

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1200b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b06f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    const/4 v0, 0x1

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0200a6

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getActionBarView()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract initDisplayOptions()V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onResume()V
.end method

.method refreshEditActionBar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$5;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAction(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setDisplayOptions(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;ZZ)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;ZZLcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
