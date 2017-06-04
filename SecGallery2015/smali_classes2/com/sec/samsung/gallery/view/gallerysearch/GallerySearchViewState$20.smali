.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$20;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->exitSelectionMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$20;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->updateTagListView(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$16000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)V

    return-void
.end method
