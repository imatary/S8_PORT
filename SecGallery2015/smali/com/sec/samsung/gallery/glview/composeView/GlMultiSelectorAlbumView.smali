.class Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;
.super Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
.source "GlMultiSelectorAlbumView.java"


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;)V

    return-void
.end method

.method private updateInvalidCandidatesRect(II)V
    .locals 4

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mCandidates:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getRenewalType()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRect(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateInvalidCandidatesType(IILandroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRealRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mCandidates:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->isScrollingUp()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_2

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    goto :goto_1

    :cond_4
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    goto :goto_1
.end method

.method private updateValidCandidatesRect(II)V
    .locals 5

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mCandidates:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mCandidates:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected createActiveCandidate(III)V
    .locals 3

    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mFreeCandidates:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->isScrollable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setRenewalType(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mCandidates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mFreeCandidates:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->setIndex(I)V

    goto :goto_0
.end method

.method protected updateCandidatesRect()V
    .locals 15

    const/4 v14, -0x1

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mSelectStartItem:I

    if-ne v10, v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->isScrollable()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getFirstItem()I

    move-result v5

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getLastItem()I

    move-result v7

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v9

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v3

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-interface {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getColumn()I

    move-result v1

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getAlbumCount(I)I

    move-result v0

    sub-int v10, v0, v9

    add-int/lit8 v2, v10, 0x1

    if-gt v1, v2, :cond_2

    move v4, v1

    :goto_1
    rem-int v8, v3, v1

    if-nez v8, :cond_3

    move v6, v1

    :goto_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->isScrollingUp()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->isExtendingUpward()Z

    move-result v10

    if-eqz v10, :cond_4

    add-int v10, v9, v4

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    add-int/lit8 v12, v3, -0x1

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {p0, v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->updateInvalidCandidatesType(IILandroid/graphics/Rect;)V

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mSelectStartItem:I

    if-eq v10, v14, :cond_0

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mSelectStartItem:I

    sub-int v11, v3, v6

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v11

    if-lt v10, v11, :cond_0

    sub-int v10, v3, v6

    add-int/lit8 v11, v3, 0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->updateValidCandidatesRect(II)V

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    add-int v10, v9, v4

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    add-int/lit8 v12, v3, -0x1

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {p0, v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->updateInvalidCandidatesType(IILandroid/graphics/Rect;)V

    add-int v10, v9, v4

    invoke-direct {p0, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->updateInvalidCandidatesRect(II)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->isScrollingDown()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mSelectionArea:Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->isExtendingUpward()Z

    move-result v10

    if-eqz v10, :cond_6

    sub-int v10, v3, v6

    add-int/lit8 v11, v3, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->updateInvalidCandidatesType(IILandroid/graphics/Rect;)V

    sub-int v10, v3, v6

    add-int/lit8 v11, v3, 0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->updateInvalidCandidatesRect(II)V

    goto/16 :goto_0

    :cond_6
    sub-int v10, v3, v6

    add-int/lit8 v11, v3, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object v12

    invoke-direct {p0, v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->updateInvalidCandidatesType(IILandroid/graphics/Rect;)V

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mSelectStartItem:I

    if-eq v10, v14, :cond_0

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->mSelectStartItem:I

    add-int v11, v9, v4

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v11

    if-gt v10, v11, :cond_0

    add-int v10, v9, v4

    invoke-direct {p0, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlMultiSelectorAlbumView;->updateValidCandidatesRect(II)V

    goto/16 :goto_0
.end method
