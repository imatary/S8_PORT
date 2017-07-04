.class Lcom/sec/android/app/ve/export/Export$1;
.super Ljava/lang/Object;
.source "Export.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/export/Export;->runMediaScanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/export/Export;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/export/Export;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/export/Export$1;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$1;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-static {v1, p2}, Lcom/sec/android/app/ve/export/Export;->access$002(Lcom/sec/android/app/ve/export/Export;Landroid/net/Uri;)Landroid/net/Uri;

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$1;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-static {v1}, Lcom/sec/android/app/ve/export/Export;->access$100(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/IExportService;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/ve/export/IExportService;->changeNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$1;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v1, v1, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$1;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v1, v1, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->onScanCompletedAfterExport(Landroid/net/Uri;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
