.class Lcom/sec/samsung/gallery/view/common/DetailsDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "DetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/DetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "DetailsDialog"

    const-string/jumbo v1, "sdcard removed. dismiss dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    # invokes: Lcom/sec/samsung/gallery/view/common/DetailsDialog;->unregisterSdCardReceiver()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->access$100(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->dismissDialog()V

    return-void
.end method
