.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$4;
.super Ljava/lang/Object;
.source "FilterGroupViewPager.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFilterClick(Landroid/view/View;Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getFilterType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->toggleTimeSelectedFilter(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "SEVI"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->addSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->removeSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    goto :goto_0
.end method
