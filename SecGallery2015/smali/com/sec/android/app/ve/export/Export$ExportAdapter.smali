.class public abstract Lcom/sec/android/app/ve/export/Export$ExportAdapter;
.super Ljava/lang/Object;
.source "Export.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/export/Export;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExportAdapter"
.end annotation


# instance fields
.field protected numberFormat:Ljava/text/NumberFormat;


# virtual methods
.method public changeNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;Z)V
    .locals 2

    if-nez p3, :cond_0

    sget v0, Lcom/sec/android/app/ve/R$string;->ve_export_done:I

    invoke-static {v0}, Lcom/sec/android/app/ve/VEApp;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gAdaper:Lcom/sec/android/app/ve/VEAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/ve/VEAdapter;->getAppIconResource()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method public getExportMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExportParameters()Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFileName()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/export/Export;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOngoingNotificationStringID()I
    .locals 1

    sget v0, Lcom/sec/android/app/ve/R$string;->notibar_exporting:I

    return v0
.end method

.method public initiateNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gAdaper:Lcom/sec/android/app/ve/VEAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/ve/VEAdapter;->getAppIconResource()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export;->getOngoingNotificationStringID()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->numberFormat:Ljava/text/NumberFormat;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->numberFormat:Ljava/text/NumberFormat;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->numberFormat:Ljava/text/NumberFormat;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    const/16 v0, 0x64

    invoke-virtual {p2, v0, v4, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method public isExportAfterAutoEdit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExportPauseSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onExportCompleted()V
    .locals 0

    return-void
.end method

.method public onExportFailed()V
    .locals 0

    return-void
.end method

.method public onExportPaused()V
    .locals 0

    return-void
.end method

.method public onExportProgressUpdate(I)V
    .locals 0

    return-void
.end method

.method public onExportStarted()V
    .locals 0

    return-void
.end method

.method public onExportStopped()V
    .locals 0

    return-void
.end method

.method public onNotifyClick()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onScanCompletedAfterExport(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public saveTranscodeElementAfterExport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;II)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->numberFormat:Ljava/text/NumberFormat;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->numberFormat:Ljava/text/NumberFormat;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/ve/export/Export$ExportAdapter;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v4, p3

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/export/Export;->getOngoingNotificationStringID()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    :goto_0
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    sget v1, Lcom/sec/android/app/ve/R$string;->export_message_paused:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method
