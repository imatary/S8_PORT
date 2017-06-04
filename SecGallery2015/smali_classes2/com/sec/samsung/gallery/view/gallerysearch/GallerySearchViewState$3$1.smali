.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3$1;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3;->onSizeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3;

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setExtraMargin(Z)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$4000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
