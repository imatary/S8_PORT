.class Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$5;
.super Ljava/lang/Object;
.source "ShowImportDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->showDialog(Ljava/io/File;Lcom/sec/android/gallery3d/data/MediaObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$902(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd$5;->this$0:Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowImportDialogCmd;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
