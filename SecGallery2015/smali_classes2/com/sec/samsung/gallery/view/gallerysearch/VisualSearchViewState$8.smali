.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$8;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->initKeywordSuggestionListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_2

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-object v6, v0

    check-cast v6, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    sget-object v3, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v3

    move-object v5, v4

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    :cond_0
    :goto_0
    move v0, v7

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setSearchingState(Z)V
    invoke-static {v0, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$8;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    invoke-static {v0, v2, v4, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
