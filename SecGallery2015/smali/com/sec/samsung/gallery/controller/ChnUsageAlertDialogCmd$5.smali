.class Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$5;
.super Ljava/lang/Object;
.source "ChnUsageAlertDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->justSelectedKeyOK:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->justSelectedKeyOK:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;->access$202(Lcom/sec/samsung/gallery/controller/ChnUsageAlertDialogCmd;Z)Z

    return-void
.end method
