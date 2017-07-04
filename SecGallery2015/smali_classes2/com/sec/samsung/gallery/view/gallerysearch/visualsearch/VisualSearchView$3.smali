.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$3;
.super Ljava/lang/Object;
.source "VisualSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->init(Landroid/os/HandlerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->updateTagList()V

    :cond_0
    return-void
.end method
