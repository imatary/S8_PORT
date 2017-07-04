.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$6;
.super Ljava/lang/Object;
.source "HistoryListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

.field final synthetic val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$6;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$6;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
