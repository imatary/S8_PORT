.class public abstract Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExpandableRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$HeaderViewHolder;,
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ViewHolder;,
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final TYPE_HEADER:I = 0x3e8


# instance fields
.field private allItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field visibleItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->allItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->visibleItems:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateVisibleItems()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->allItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->allItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;->getType()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->allItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->visibleItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->visibleItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->visibleItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->visibleItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;->getType()I

    move-result v0

    return v0
.end method

.method inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method abstract reloadData(Z)V
.end method

.method setItem(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;->getType()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->visibleItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->visibleItems:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->notifyItemInserted(I)V

    :cond_1
    return-void
.end method

.method setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->allItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->updateVisibleItems()V

    return-void
.end method
