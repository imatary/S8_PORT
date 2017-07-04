.class Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;
.super Ljava/lang/Object;
.source "Export.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/export/Export;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExportServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/export/Export;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/export/Export;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-static {p2}, Lcom/sec/android/app/ve/export/IExportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/ve/export/IExportService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/export/Export;->access$102(Lcom/sec/android/app/ve/export/Export;Lcom/sec/android/app/ve/export/IExportService;)Lcom/sec/android/app/ve/export/IExportService;

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-static {v1}, Lcom/sec/android/app/ve/export/Export;->access$100(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/IExportService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-static {v1}, Lcom/sec/android/app/ve/export/Export;->access$100(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/IExportService;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/ve/export/IExportService;->startExport()V

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;->this$0:Lcom/sec/android/app/ve/export/Export;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/export/Export;->access$200(Lcom/sec/android/app/ve/export/Export;I)V

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-static {v1}, Lcom/sec/android/app/ve/export/Export;->access$100(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/IExportService;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/ve/export/IExportService;->initNotification()V

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;->this$0:Lcom/sec/android/app/ve/export/Export;

    invoke-static {v1}, Lcom/sec/android/app/ve/export/Export;->access$300(Lcom/sec/android/app/ve/export/Export;)Lcom/sec/android/app/ve/export/Export$ThreadHandler;

    move-result-object v1

    const/4 v2, 0x3

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/ve/export/Export$ThreadHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;->this$0:Lcom/sec/android/app/ve/export/Export;

    iget-object v1, v1, Lcom/sec/android/app/ve/export/Export;->mAdapter:Lcom/sec/android/app/ve/export/Export$ExportAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->onExportStarted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export$ExportServiceConnection;->this$0:Lcom/sec/android/app/ve/export/Export;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/export/Export;->access$102(Lcom/sec/android/app/ve/export/Export;Lcom/sec/android/app/ve/export/IExportService;)Lcom/sec/android/app/ve/export/IExportService;

    return-void
.end method
