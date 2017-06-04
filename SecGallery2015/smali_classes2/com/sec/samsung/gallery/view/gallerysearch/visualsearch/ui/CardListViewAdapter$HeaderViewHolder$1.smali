.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$1;
.super Ljava/lang/Object;
.source "CardListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

.field final synthetic val$this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$1;->val$this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->handleClick()V

    return-void
.end method
