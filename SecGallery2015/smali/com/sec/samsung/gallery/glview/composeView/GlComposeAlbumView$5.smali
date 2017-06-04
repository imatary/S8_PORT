.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;
.super Ljava/lang/Object;
.source "GlComposeAlbumView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final groupMap:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->groupMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private calculateLastIndex()I
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-gt v2, v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v5, :cond_0

    move-object v1, v4

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int v3, v0, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v3, 0x1

    return v5
.end method

.method private updateNotification(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 4

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iput p2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mAccessibilityIndex:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->groupMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mAccessibilityIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getDeleteObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, p2, 0x1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->groupMap:Landroid/util/SparseIntArray;

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getObject(I)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->getObject(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->groupMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->calculateLastIndex()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v2, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    add-int/lit8 v4, v1, 0x1

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getDeleteObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x3

    if-ne v4, v5, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->calculateLastIndex()I

    move-result v4

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v3, :cond_0

    iget-object v2, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_0

    :cond_4
    xor-int/lit8 p1, p1, -0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v3, :cond_0

    iget-object v2, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x4

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getButtonObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    goto :goto_0
.end method

.method public update(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11

    const/4 v10, -0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->groupMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->calculateLastIndex()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->updateNotification(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v7

    if-gt v1, v7, :cond_5

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-virtual {v7, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isEmptyUpSideAlbum()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v1, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v7

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAccessibilityIndex:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->groupMap:Landroid/util/SparseIntArray;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v8

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mAccessibilityIndex:I

    const/4 v9, -0x4

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mMoreAlbumDividerObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
    invoke-static {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v8

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->mIndex:I

    invoke-virtual {p1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->groupMap:Landroid/util/SparseIntArray;

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v7, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    move-object v7, v0

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v6, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iput v7, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v8, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_2
    move-object v7, v0

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v5, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    xor-int/lit8 v2, v7, -0x1

    if-ne v2, v10, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->calculateLastIndex()I

    move-result v2

    :cond_3
    iput v2, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->groupMap:Landroid/util/SparseIntArray;

    iget v8, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    const/4 v9, -0x3

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v8, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
