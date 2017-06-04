.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;
.super Ljava/lang/Object;
.source "HistoryListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryViewHolder"
.end annotation


# instance fields
.field final deleteIconView:Landroid/widget/ImageView;

.field final itemLayout:Landroid/widget/LinearLayout;

.field final textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f120131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f12012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->deleteIconView:Landroid/widget/ImageView;

    const v0, 0x7f120130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    return-void
.end method
