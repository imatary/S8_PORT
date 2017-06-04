.class Lcom/sec/android/app/ve/export/ExportService$2;
.super Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;
.source "ExportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/export/ExportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/export/ExportService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/export/ExportService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/export/ExportService$2;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onExportCompleted()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$2;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/ve/export/ExportService;->prevProgress:I
    invoke-static {v0, v1}, Lcom/sec/android/app/ve/export/ExportService;->access$402(Lcom/sec/android/app/ve/export/ExportService;I)I

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onExportPaused()V
    .locals 0

    return-void
.end method

.method public onExportStarted()V
    .locals 0

    return-void
.end method

.method public onExportStopped()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
