.class Lcom/sec/samsung/gallery/glview/GlButtonView$1;
.super Ljava/lang/Object;
.source "GlButtonView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/GlButtonView;->initMoveDetectorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/GlButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$200(Lcom/sec/samsung/gallery/glview/GlButtonView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$400(Lcom/sec/samsung/gallery/glview/GlButtonView;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$000(Lcom/sec/samsung/gallery/glview/GlButtonView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$002(Lcom/sec/samsung/gallery/glview/GlButtonView;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$500(Lcom/sec/samsung/gallery/glview/GlButtonView;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$600(Lcom/sec/samsung/gallery/glview/GlButtonView;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$600(Lcom/sec/samsung/gallery/glview/GlButtonView;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$700(Lcom/sec/samsung/gallery/glview/GlButtonView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;->onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onGenericMotionTouch(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMouseWheelScale(ZII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMultiSelectEnter(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMultiSelectMove(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMultiSelectRelease(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPress(IIII)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$002(Lcom/sec/samsung/gallery/glview/GlButtonView;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$200(Lcom/sec/samsung/gallery/glview/GlButtonView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$300(Lcom/sec/samsung/gallery/glview/GlButtonView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$000(Lcom/sec/samsung/gallery/glview/GlButtonView;)Z

    move-result v0

    return v0
.end method

.method public onRelease(IIII)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$000(Lcom/sec/samsung/gallery/glview/GlButtonView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$002(Lcom/sec/samsung/gallery/glview/GlButtonView;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$200(Lcom/sec/samsung/gallery/glview/GlButtonView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlButtonView$1;->this$0:Lcom/sec/samsung/gallery/glview/GlButtonView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/GlButtonView;->access$100(Lcom/sec/samsung/gallery/glview/GlButtonView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlButtonView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return v3
.end method

.method public onScroll(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSecondaryClick(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
