.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;
.source "BaseMoreInfoItemCategory.java"


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;)V

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
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->getView()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->mView:Landroid/view/View;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->getView()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->onDestroy()V

    return-void
.end method

.method public bridge synthetic refreshQuery(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->refreshQuery(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic reload()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->reload()V

    return-void
.end method

.method public setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    return-void
.end method

.method public setMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setMode(Z)V

    return-void
.end method
