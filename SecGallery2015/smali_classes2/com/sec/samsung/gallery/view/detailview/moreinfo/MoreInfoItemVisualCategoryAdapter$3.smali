.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$3;
.super Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;
.source "MoreInfoItemVisualCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->reloadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V

    return-void
.end method


# virtual methods
.method protected publishResults(Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    check-cast p1, Ljava/util/List;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mCategories:Ljava/util/List;
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->access$502(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mCategories:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->createListItems(Ljava/util/List;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->configureItems(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->access$700(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;Ljava/util/List;)V

    return-void
.end method

.method protected publishTempResults(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
