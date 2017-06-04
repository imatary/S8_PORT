.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$33;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

.field final synthetic val$keyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$33;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$33;->val$keyword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$33;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$33;->val$keyword:Ljava/lang/String;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->updateView(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$3600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$33;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/4 v1, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setSearchingState(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)V

    return-void
.end method
