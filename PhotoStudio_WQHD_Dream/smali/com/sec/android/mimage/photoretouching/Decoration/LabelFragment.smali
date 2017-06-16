.class public Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;
.super Lcom/samsung/android/sdk/rcl/RclExpansionFragment;
.source "LabelFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final KEY_CURRENT_CATEGORY:Ljava/lang/String; = "current_category"

.field public static final TAG:Ljava/lang/String; = "LabelFragment"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

.field private mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

.field private mGridView:Landroid/widget/GridView;

.field public mIsFullMode:Z

.field private mPickerViewIsExpanded:Z

.field private maxHeight:I

.field private minHeight:I

.field private onLabelListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

.field private root:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;I)Landroid/app/Fragment;
    .locals 3

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    invoke-direct {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "current_category"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private setGridViewProperties(Landroid/widget/GridView;)V
    .locals 5

    const/4 v4, -0x1

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    const/16 v2, 0x28

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->onLabelListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;-><init>(Landroid/app/Fragment;Landroid/widget/GridView;ILcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->setLabelGridDimensions(Landroid/widget/GridView;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamChina()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    const/high16 v1, 0x2000000

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridAdapter:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/widget/GridView;->invalidateViews()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setLabelGridDimensions(Landroid/widget/GridView;)V
    .locals 11

    const v10, 0x7f0800df

    const v9, 0x7f0800de

    const v8, 0x7f0800db

    const v7, 0x7f0800da

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08036f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v3, v2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {p1, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v2, v3, v5}, Landroid/widget/GridView;->setPadding(IIII)V

    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public enableExpansion(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->enableExpansion(III)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->setExpansionMode(I)V

    return-void
.end method

.method public enableFragmentExpansion(Landroid/app/Fragment;Z)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->setExpansion(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDensity()F
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public getNumColumn()I
    .locals 3

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x3

    :cond_0
    return v0
.end method

.method public isFragmentViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mPickerViewIsExpanded:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isDreamChina()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->minHeight:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->maxHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->enableExpansion(Landroid/view/View;II)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->getExpansionHelper()Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->enableFragmentExpansion(Landroid/app/Fragment;Z)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridView:Landroid/widget/GridView;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->setLabelGridDimensions(Landroid/widget/GridView;)V

    return-void
.end method

.method public onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f030079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->root:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->root:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->root:Landroid/view/View;

    const v1, 0x7f0e0203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridView:Landroid/widget/GridView;

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->setGridViewProperties(Landroid/widget/GridView;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->root:Landroid/view/View;

    return-object v0
.end method

.method protected onExpansionClose()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionClose()V

    return-void
.end method

.method protected onExpansionFinish(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mPickerViewIsExpanded:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mPickerViewIsExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridView:Landroid/widget/GridView;

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LabelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExpansionFinish, Resize Helper isLock? previous["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] current[true]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->lock()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "LabelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExpansionFinish, Resize Helper isLock? previous["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] current[false]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    goto :goto_0
.end method

.method protected onExpansionStart(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionFragment;->onExpansionStart(Z)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mGridView:Landroid/widget/GridView;

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LabelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll, Resize Helper isLock? previous["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] current[true]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->lock()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "LabelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll, Resize Helper isLock? previous["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] current[false]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public setMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mIsFullMode:Z

    const-string v0, "LabelFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->mIsFullMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnDecorationAttachInterfaceListener(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->onLabelListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    return-void
.end method

.method public updateExpansionWH(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->minHeight:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->maxHeight:I

    return-void
.end method
