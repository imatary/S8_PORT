.class Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$3;
.super Ljava/lang/Object;
.source "NetworkWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->access$000(Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$3;->this$0:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->access$000(Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
