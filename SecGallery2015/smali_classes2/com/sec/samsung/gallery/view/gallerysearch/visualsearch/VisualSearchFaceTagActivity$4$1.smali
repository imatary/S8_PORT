.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4$1;
.super Ljava/lang/Object;
.source "VisualSearchFaceTagActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mSeparatedListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SeparatedListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$4;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->updateMyProfileListView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V

    return-void
.end method