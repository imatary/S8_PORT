.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$6;
.super Ljava/lang/Object;
.source "VisualSearchView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onGenericMotionTouch(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMouseWheelScale(ZII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;->onMove(II)Z

    :cond_0
    const/4 v0, 0x1

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
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;->onPress(II)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRelease(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;->onRelease(IIII)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(IIII)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSecondaryClick(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
