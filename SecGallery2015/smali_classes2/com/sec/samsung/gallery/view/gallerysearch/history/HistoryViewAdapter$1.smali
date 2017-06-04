.class Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$1;
.super Ljava/lang/Object;
.source "HistoryViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->addView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

.field final synthetic val$item:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$1;->val$item:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$1;->val$item:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$1;->val$item:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->deleteHistoryItem(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->updateHistoryList()V

    return-void
.end method
