.class Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$1;
.super Ljava/lang/Object;
.source "NetworkWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "NetworkWarningDialog"

    const-string/jumbo v1, "ok pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->access$000(Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
