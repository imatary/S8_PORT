.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5$1;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateSuggestionListView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    return-void
.end method
