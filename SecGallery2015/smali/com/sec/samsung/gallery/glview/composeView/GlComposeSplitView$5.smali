.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;
.super Ljava/lang/Object;
.source "GlComposeSplitView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field expansionObjVisibility:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getObject(I)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->getObject(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 6

    const/4 v3, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveObject()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge p1, v4, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveObject()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveObject()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int v1, p1, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveObject()Landroid/util/SparseArray;

    move-result-object v0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->expansionObjVisibility:Z

    if-eqz v4, :cond_4

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v3, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveObject()Landroid/util/SparseArray;

    move-result-object v0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->expansionObjVisibility:Z

    if-eqz v4, :cond_7

    div-int/lit8 v4, p1, 0x2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    div-int/lit8 v3, p1, 0x2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_6

    move-object v3, v2

    goto/16 :goto_0

    :cond_6
    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v3, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto/16 :goto_0
.end method

.method public update(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->expansionObjVisibility:Z

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveObject()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v4, 0x0

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getActiveObject()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v3, :cond_5

    add-int/lit8 v5, v6, 0x1

    iput v6, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v8, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    goto :goto_0

    :cond_0
    move v5, v6

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v4, 0x0

    move v6, v5

    :goto_2
    if-ge v4, v1, :cond_4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v3, :cond_2

    add-int/lit8 v5, v6, 0x1

    iput v6, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v8, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v2, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->expansionObjVisibility:Z

    add-int/lit8 v6, v5, 0x1

    iput v5, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v8, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_2
    move v5, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    move v5, v6

    goto :goto_1
.end method
