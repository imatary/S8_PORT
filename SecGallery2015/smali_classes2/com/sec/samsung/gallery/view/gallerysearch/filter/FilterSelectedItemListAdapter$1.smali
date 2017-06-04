.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$1;
.super Ljava/lang/Object;
.source "FilterSelectedItemListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

.field final synthetic val$data:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$1;->val$data:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$1;->val$data:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter$1;->val$data:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->removeSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    :cond_0
    return-void
.end method
