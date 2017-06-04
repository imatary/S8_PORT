.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;
.source "MoreInfoItemSimple.java"


# instance fields
.field private final mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-void
.end method


# virtual methods
.method public bridge synthetic actionEditCancel()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->actionEditCancel()V

    return-void
.end method

.method public bridge synthetic actionEditDone()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->actionEditDone()V

    return-void
.end method

.method public bridge synthetic dataEdited()Z
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->dataEdited()Z

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->getView()Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mView:Landroid/view/View;

    const v2, 0x7f1201d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mView:Landroid/view/View;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLongDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mView:Landroid/view/View;

    const v2, 0x7f1201d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemSimple;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLongDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
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

.method public bridge synthetic setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    return-void
.end method

.method public bridge synthetic setMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setMode(Z)V

    return-void
.end method
