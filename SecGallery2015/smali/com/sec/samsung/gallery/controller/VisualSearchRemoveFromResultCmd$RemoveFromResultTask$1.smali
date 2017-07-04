.class Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask$1;
.super Ljava/lang/Object;
.source "VisualSearchRemoveFromResultCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->showProgressDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask$1;->this$0:Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string/jumbo v0, "VSRemoveFromResultCmd"

    const-string/jumbo v1, "Remove from result task is cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->access$000()Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd;->access$000()Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/VisualSearchRemoveFromResultCmd$RemoveFromResultTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
