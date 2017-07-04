.class Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$4;
.super Ljava/lang/Object;
.source "ShowImportDialogCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->onCancelled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$4;->this$1:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask$4;->this$1:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$MTPImportTask;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0213

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method
