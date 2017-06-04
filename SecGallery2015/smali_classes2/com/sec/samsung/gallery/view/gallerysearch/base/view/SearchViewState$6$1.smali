.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6$1;
.super Ljava/lang/Object;
.source "SearchViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCompleted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->selectAllPostProcess()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V

    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method
