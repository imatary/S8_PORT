.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$3;
.super Ljava/lang/Object;
.source "PhotoViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSortByTypeChanaged(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v0, p1, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$1000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->forceReload()V

    return-void
.end method
