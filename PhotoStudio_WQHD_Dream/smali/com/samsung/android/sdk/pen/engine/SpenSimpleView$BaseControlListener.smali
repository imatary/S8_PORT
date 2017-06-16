.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;
.super Ljava/lang/Object;
.source "SpenSimpleView.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseControlListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)V

    return-void
.end method


# virtual methods
.method public onClosed(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v2, "SpenSimpleView"

    const-string v3, "BaseControlListener onClosed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1000(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1000(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1600(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1600(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1600(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    invoke-static {v2, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1002(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlListener;->onClosed(Ljava/util/ArrayList;)Z

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1600(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1600(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1600(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectCount(Z)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->update()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onMenuSelected(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlListener;->onMenuSelected(Ljava/util/ArrayList;I)Z

    :cond_0
    return-void
.end method

.method public onObjectChanged(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SpenSimpleView"

    const-string v1, "onObjectChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1000(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlListener;->onObjectChanged(Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->update()V

    goto :goto_0
.end method

.method public onRectChanged(Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlListener;->onRectChanged(Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_0
    return-void
.end method

.method public onRequestBackground()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->captureCurrentView(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onRequestCoordinateInfo(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V
    .locals 6

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mScreenStartX:I
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1800(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mScreenStartY:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1900(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mScreenStartX:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1800(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mRtoCvsItstFrmWidth:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$2000(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mScreenStartY:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1900(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mRtoCvsItstFrmHeight:I
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$2100(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getZoomRatio()F

    move-result v0

    iput v0, p1, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    return-void
.end method

.method public onRequestHoveringImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$2200(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mHoverPointer:Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$2200(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenHoverPointerIconWrapper;->getPointerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onRequestPixel(II)I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->nativeSimple:J
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SpenSimpleView"

    const-string v1, "onRequestPixel : nativeCanvas is not created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v4
.end method

.method public onRequestScroll(FF)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->setPan(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public onRotationChanged(FLcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$BaseControlListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControlListener:Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlListener;->onRotationChanged(FLcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_0
    return-void
.end method

.method public onVisibleUpdated(Ljava/util/ArrayList;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v3, 0x1

    const-string v1, "SpenSimpleView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibleUpdated : visible = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p2, v3, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", drawImmediately = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p3, v3, :cond_2

    const-string v0, "true"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    const-string v0, "SpenSimpleView"

    const-string v1, "onVisibleUpdated : objectList is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v0, "false"

    goto :goto_0

    :cond_2
    const-string v0, "false"

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_4
    const-string v0, "SpenSimpleView"

    const-string v1, "onVisibleUpdated : the size of list is zero."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
