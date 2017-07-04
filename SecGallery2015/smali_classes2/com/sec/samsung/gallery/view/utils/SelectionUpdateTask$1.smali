.class Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;
.super Ljava/lang/Object;
.source "SelectionUpdateTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;->this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;->this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->access$000(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;->this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;->this$0:Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->access$100(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)Lcom/sec/android/gallery3d/data/OnProgressListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onCompleted(Z)V

    :cond_0
    return-void
.end method
