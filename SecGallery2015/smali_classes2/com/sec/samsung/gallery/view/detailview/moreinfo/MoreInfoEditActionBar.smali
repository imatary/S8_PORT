.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;
.source "MoreInfoEditActionBar.java"


# static fields
.field private static final MMS_RCS:Ljava/lang/String; = "mms_rcs"

.field private static final TAG:Ljava/lang/String; = "MoreInfoEditActionBar"


# instance fields
.field private final mActionBarButtons:Landroid/view/View;

.field private final mActionBarListener:Landroid/view/View$OnClickListener;

.field private mDoneActionView:Landroid/view/View;

.field private mIsDoneEnabled:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mMainActionBar:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mActionBarListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mMainActionBar:Landroid/app/ActionBar;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mActionBarButtons:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mActionBarButtons:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->initActionbar()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->onActionBarItemSelected(I)V

    return-void
.end method

.method private getCustomActionButtonTextSize(I)F
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010095

    aput v5, v4, v6

    invoke-virtual {v3, p1, v4}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    return v1
.end method

.method private initActionbar()V
    .locals 14

    const v13, 0x7f0a041c

    const v12, 0x7f020253

    const v11, 0x7f0200a6

    const/4 v10, 0x0

    const/4 v9, 0x1

    const v6, 0x7f0c00b9

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->getCustomActionButtonTextSize(I)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mActionBarButtons:Landroid/view/View;

    const v7, 0x7f120078

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mActionBarButtons:Landroid/view/View;

    const v7, 0x7f120079

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v6

    invoke-virtual {v0, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mActionBarButtons:Landroid/view/View;

    const v7, 0x7f12007a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mActionBarButtons:Landroid/view/View;

    const v7, 0x7f12007b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v6

    invoke-virtual {v3, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v12}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->updateDoneButton(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v10, v10}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setContentInsetForCustomActionBar(Landroid/app/Activity;II)V

    return-void

    :cond_0
    invoke-virtual {v1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initCustomMenuItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->createCustomMenuItem(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$4;

    invoke-direct {v2, p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a041c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onActionBarItemSelected(I)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f12007a

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mIsDoneEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runMoreInfoEvent(II)V

    :goto_0
    const-string/jumbo v0, "304"

    const-string/jumbo v1, "4524"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a026b

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runMoreInfoEvent(II)V

    goto :goto_0

    :cond_2
    const v0, 0x7f120078

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runMoreInfoEvent(II)V

    const-string/jumbo v0, "304"

    const-string/jumbo v1, "4523"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public initDisplayOptions()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->refreshEditActionBar(Z)V

    invoke-virtual {p0, p0, v0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->setDisplayOptions(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoActionBarManager;ZZ)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mActionBarButtons:Landroid/view/View;

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/view/MenuInflater;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const v4, 0x7f130020

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v4, 0x7f120078

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->initCustomMenuItem(Landroid/view/MenuItem;)Landroid/view/View;

    const v4, 0x7f12007a

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v4, "mms_rcs"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    const v4, 0x7f0a0258

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->initCustomMenuItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mIsDoneEnabled:Z

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->updateDoneButton(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v5, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setContentInsetForCustomActionBar(Landroid/app/Activity;II)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->initDisplayOptions()V

    return-void
.end method

.method public updateDoneButton(Z)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mIsDoneEnabled:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mDoneActionView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_3
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method

.method public updateLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoEditActionBar;->initDisplayOptions()V

    return-void
.end method
