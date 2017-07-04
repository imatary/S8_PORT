.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6$1;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    return-void
.end method
