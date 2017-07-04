.class Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$3;
.super Ljava/lang/Object;
.source "HistoryViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$3;->val$item:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x17

    if-eq p2, v2, :cond_0

    const/16 v2, 0x42

    if-ne p2, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$3;->val$item:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$3;->val$item:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchActionBar;->setHistoryQuery(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
