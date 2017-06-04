.class Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;
.super Ljava/lang/Object;
.source "GlComposePhotoView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field expansionObjVisibility:Z

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getObject(I)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->getObject(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 5

    const/4 v2, 0x0

    if-gez p1, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->expansionObjVisibility:Z

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    div-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    rem-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    if-eqz v1, :cond_2

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GlComposePhotoView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object v1, v2

    goto :goto_0
.end method

.method public update(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->expansionObjVisibility:Z

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveStart:I

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpActiveEnd:I

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v4, v3, 0x1

    iput v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    invoke-virtual {p1, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->expansionObjVisibility:Z

    add-int/lit8 v3, v4, 0x1

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAccessibilityIndex:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

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
