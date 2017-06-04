.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;
.super Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;
.source "RegisteredNameTagActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;-><init>()V

    return-void
.end method

.method private initFaceNameTextView()V
    .locals 2

    const v1, 0x7f120227

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->mFaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getLayoutId()I
    .locals 1

    const v0, 0x7f0400e4

    return v0
.end method

.method getListId()I
    .locals 1

    const v0, 0x7f120228

    return v0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->mRootView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->mRootView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_0
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/AbsVisualSearchFaceTagActivity;->onResume()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->initFaceImageView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->initFaceNameTextView()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->initRegisteredNameListView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->mRootView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->mFaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;->loadData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->mRootView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/RegisteredNameTagActivity;->mRegisteredNameListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RegisteredNameListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
