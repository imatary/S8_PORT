.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$2;
.super Ljava/lang/Object;
.source "FilterSelectedItemListView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/16 v2, 0x42

    if-eq p2, v2, :cond_0

    const/16 v2, 0x17

    if-ne p2, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->removeSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
