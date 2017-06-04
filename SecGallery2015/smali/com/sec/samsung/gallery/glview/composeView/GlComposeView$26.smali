.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field expansionObjVisibility:Z

.field private final groupMap:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private calculateLastIndex()I
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gt v2, v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int v3, v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v3, 0x1

    return v4
.end method

.method private updateNotification(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 4

    const/4 v3, -0x4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iput p2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mAccessibilityIndex:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mAccessibilityIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getDeleteObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v1, p2, 0x1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v2

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setHoverScrollFlexibleHeightMargin(I)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)V

    goto :goto_0
.end method

.method private updateSearchFaceObj(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v0

    iput p2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mAccessibilityIndex:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v1

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mAccessibilityIndex:I

    const/4 v2, -0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v1

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->mAccessibilityIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private updateTipCard(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 6

    const/4 v5, -0x5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v3

    iput p2, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mAccessibilityIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v4

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mAccessibilityIndex:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v4

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->mAccessibilityIndex:I

    invoke-virtual {p1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getCancelObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    add-int/lit8 v3, p2, 0x1

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getDoneObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    add-int/lit8 v3, p2, 0x2

    iput v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getLaterObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v3, p2, 0x3

    iput v3, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget v4, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v4, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getObject(I)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 13

    const/4 v1, 0x0

    const/16 v12, 0x8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v9

    instance-of v9, v9, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-gt p1, v9, :cond_0

    if-gez p1, :cond_2

    :cond_0
    move-object v7, v1

    :cond_1
    :goto_0
    return-object v7

    :cond_2
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->expansionObjVisibility:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    div-int/lit8 v10, p1, 0x2

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    rem-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_1

    if-eqz v7, :cond_3

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_0

    :cond_3
    move-object v7, v1

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/glcore/GlObject;

    move-object v7, v9

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    sub-int v11, p1, v4

    invoke-virtual {v10, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getGroupObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v9, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v9, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    add-int/lit8 v10, p1, -0x2

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    :cond_6
    :goto_1
    move-object v7, v1

    goto :goto_0

    :cond_7
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_a

    xor-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    sub-int v11, p1, v4

    invoke-virtual {v10, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getGroupObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v9, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v9, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    add-int/lit8 v10, p1, -0x2

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v8, :cond_6

    iget-object v1, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_1

    :cond_9
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v8, :cond_6

    iget-object v1, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_1

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x3

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTimeLineIndexFromId(I)I
    invoke-static {v9, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)I

    move-result v4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getTimeGroup()Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glcore/GlObject;

    goto :goto_1

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x5

    if-ne v9, v10, :cond_f

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->calculateLastIndex()I

    move-result v6

    if-ne p1, v6, :cond_c

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v9, v6, 0x1

    if-ne p1, v9, :cond_d

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getCancelObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v9, v6, 0x2

    if-ne p1, v9, :cond_e

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getDoneObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v9, v6, 0x3

    if-ne p1, v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;->getLaterObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x6

    if-ne v9, v10, :cond_10

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;
    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v1

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x4

    if-ne v9, v10, :cond_12

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->calculateLastIndex()I

    move-result v6

    if-ne p1, v6, :cond_11

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v9, v6, 0x1

    if-ne p1, v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getDeleteObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    goto/16 :goto_1

    :cond_12
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getGroupObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    move-result-object v3

    if-eqz v3, :cond_6

    if-nez v4, :cond_13

    iget-object v1, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto/16 :goto_1

    :cond_13
    iget-object v9, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v9, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public update(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v14

    instance-of v14, v14, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->expansionObjVisibility:Z

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v8, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    if-ge v8, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v14, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int/lit8 v10, v9, 0x1

    iput v9, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v15, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v3, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->expansionObjVisibility:Z

    add-int/lit8 v9, v10, 0x1

    iput v10, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->calculateLastIndex()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTipCardObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;
    invoke-static {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeTipCard;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->updateTipCard(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :goto_2
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-gt v11, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-nez v7, :cond_5

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSearchFaceObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;
    invoke-static {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    move-result-object v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->updateSearchFaceObj(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->updateNotification(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v14

    invoke-static {v14}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v15

    aget-object v14, v14, v15

    iget v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int v6, v5, v14

    iget-object v14, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v14, :cond_2

    move v9, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mTimeLineSplit:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->getTimeGroup()Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getVisibility()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTimeLineIndexFromId(I)I
    invoke-static {v15, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)I

    move-result v15

    iput v15, v14, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mAccessibilityIndex:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    iget v14, v14, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mAccessibilityIndex:I

    const/16 v16, -0x3

    move/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v15, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    iget v14, v14, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mAccessibilityIndex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    iget-object v14, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v14, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    add-int/lit8 v10, v9, 0x1

    iput v9, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget-object v15, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v15, v15, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v15, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v15, v15, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v14, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v14

    if-eqz v14, :cond_c

    add-int/lit8 v9, v10, 0x1

    iput v10, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget v15, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->getIndex()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v15, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v9

    add-int/2addr v9, v8

    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v14, v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ge v8, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v14, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v14, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-ne v14, v7, :cond_a

    iput v9, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget v15, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v15, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    instance-of v14, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v14, :cond_9

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v3, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v14

    if-eqz v14, :cond_9

    xor-int/lit8 v14, v9, -0x1

    iput v14, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->groupMap:Landroid/util/SparseIntArray;

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    const/16 v16, -0x2

    invoke-virtual/range {v14 .. v16}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$26;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v15, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_9
    add-int/lit8 v9, v9, 0x1

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    return-void

    :cond_c
    move v9, v10

    goto :goto_5

    :cond_d
    move v9, v10

    goto/16 :goto_1
.end method
