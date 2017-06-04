.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;
.super Ljava/lang/Object;
.source "GlComposeEventView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getObject(I)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;->getObject(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x6

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    sub-int v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v2, :cond_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    move-object v0, v2

    goto :goto_0

    :pswitch_1
    iget-object v0, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_0

    :pswitch_2
    iget-object v3, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v3, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v1, :cond_1

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iput v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAccessibilityIndex:I

    iget v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAccessibilityIndex:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {p1, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {p1, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {p1, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_0
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {p1, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
