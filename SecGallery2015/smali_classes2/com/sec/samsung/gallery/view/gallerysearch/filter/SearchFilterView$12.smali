.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;
.super Ljava/lang/Object;
.source "SearchFilterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->drawEdge(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

.field final synthetic val$deltaDistance:F

.field final synthetic val$displacement:F


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->val$deltaDistance:F

    iput p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->val$displacement:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->val$deltaDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->val$deltaDistance:F

    iget v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->val$displacement:F

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->drawEdge(FFZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->val$deltaDistance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeBottom:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeBottom:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->val$deltaDistance:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->val$displacement:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->drawEdge(FFZ)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0
.end method
