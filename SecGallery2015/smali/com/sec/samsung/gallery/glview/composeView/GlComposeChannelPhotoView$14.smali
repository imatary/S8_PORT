.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;
.super Ljava/lang/Object;
.source "GlComposeChannelPhotoView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final groupMap:Landroid/util/SparseIntArray;

.field private mExpansionObjVisibility:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->groupMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private getObjectWithoutTitle(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 4

    const/4 v1, 0x0

    if-gez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->mExpansionObjVisibility:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    div-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object v0, v1

    goto :goto_0
.end method

.method private updateWithoutTitle(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->mExpansionObjVisibility:Z

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v4, v3, 0x1

    iput v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->mExpansionObjVisibility:Z

    add-int/lit8 v3, v4, 0x1

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic getObject(I)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->getObject(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 10

    const/16 v9, 0x8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->getObjectWithoutTitle(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->groupMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->groupMap:Landroid/util/SparseIntArray;

    sub-int v8, p1, v4

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getGroupObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    add-int/lit8 v8, p1, -0x2

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x2

    if-ne v7, v8, :cond_6

    xor-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->groupMap:Landroid/util/SparseIntArray;

    sub-int v8, p1, v4

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getGroupObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    add-int/lit8 v8, p1, -0x2

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getGroupObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v4, :cond_7

    iget-object v0, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto/16 :goto_0

    :cond_7
    iget-object v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public update(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 13

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_GRACE_EVENT_LAYOUT:Z
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->USE_DREAM_EVENT_LAYOUT:Z
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->updateWithoutTitle(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->groupMap:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->clear()V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mIsListViewVisible:Z
    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v8, 0x0

    :goto_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-gt v8, v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v2

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v11

    aget-object v10, v10, v11

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int v3, v2, v10

    iget-object v10, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v10, :cond_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move v6, v2

    iget-object v10, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    add-int/lit8 v7, v6, 0x1

    iput v6, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->groupMap:Landroid/util/SparseIntArray;

    iget-object v11, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v11, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v10, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v10, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v10

    if-eqz v10, :cond_7

    add-int/lit8 v6, v7, 0x1

    iput v7, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->groupMap:Landroid/util/SparseIntArray;

    iget v11, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v11, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v10, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_4
    :goto_1
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v6

    add-int/2addr v6, v5

    :goto_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v5, v10, :cond_2

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v10, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-ne v10, v4, :cond_6

    iput v6, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->groupMap:Landroid/util/SparseIntArray;

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v11, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v10, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    instance-of v10, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v10, :cond_5

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v10

    if-eqz v10, :cond_5

    xor-int/lit8 v10, v6, -0x1

    iput v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->groupMap:Landroid/util/SparseIntArray;

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    const/4 v12, -0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v10, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_1
.end method
