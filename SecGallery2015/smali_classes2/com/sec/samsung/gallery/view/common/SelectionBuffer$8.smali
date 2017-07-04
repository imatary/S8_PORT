.class Lcom/sec/samsung/gallery/view/common/SelectionBuffer$8;
.super Ljava/lang/Object;
.source "SelectionBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$8;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$8;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$200(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/SelectionItemListAdapter;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$8;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$8;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$400(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer$8;->this$0:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->access$000(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setSelectionBuffer(Lcom/sec/samsung/gallery/view/common/SelectionBuffer;)V

    return-void
.end method
