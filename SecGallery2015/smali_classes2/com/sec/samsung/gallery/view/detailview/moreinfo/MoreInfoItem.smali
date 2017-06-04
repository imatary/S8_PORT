.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;
.super Ljava/lang/Object;
.source "MoreInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

.field mEditMode:Z

.field private final mIcon:I

.field final mIsSCloudItem:Z

.field final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field final mRootView:Landroid/view/View;

.field private final mTitle:I

.field private final mUseVisualMoreInfo:Z

.field final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mUseVisualMoreInfo:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mContext:Landroid/content/Context;

    iget v2, p4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;->layout:I

    iget v3, p4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;->icon:I

    iput v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mIcon:I

    iget v3, p4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;->title:I

    iput v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mTitle:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v3, v4}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSCloudMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mIsSCloudItem:Z

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mRootView:Landroid/view/View;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0152

    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mView:Landroid/view/View;

    return-void
.end method

.method private setCustomIconMargin(Landroid/view/View;)V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->fontScale:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b019f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v5, v4

    mul-float/2addr v5, v0

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public actionEditCancel()V
    .locals 0

    return-void
.end method

.method public actionEditDone()V
    .locals 0

    return-void
.end method

.method public dataEdited()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mView:Landroid/view/View;

    const v4, 0x7f1201d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mTitle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mUseVisualMoreInfo:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mView:Landroid/view/View;

    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mView:Landroid/view/View;

    const v4, 0x7f1201d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mIcon:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setCustomIconMargin(Landroid/view/View;)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public refreshQuery(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    return-void
.end method

.method public setMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->mEditMode:Z

    return-void
.end method
