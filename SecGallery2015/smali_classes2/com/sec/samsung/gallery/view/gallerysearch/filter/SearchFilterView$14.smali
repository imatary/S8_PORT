.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$14;
.super Ljava/lang/Object;
.source "SearchFilterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->finishEdge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->finishEdge()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeBottom:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeBottom:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->finishEdge()V

    :cond_1
    return-void
.end method
