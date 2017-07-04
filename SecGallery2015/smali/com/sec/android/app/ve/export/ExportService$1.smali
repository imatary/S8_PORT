.class Lcom/sec/android/app/ve/export/ExportService$1;
.super Lcom/sec/android/app/ve/export/IExportService$Stub;
.source "ExportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/export/ExportService;->onBind(Landroid/content/Intent;)Lcom/sec/android/app/ve/export/IExportService$Stub;
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

    iput-object p1, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/IExportService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelNotification()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export;->getIsBackgroundExport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "EXPORT"

    const-string/jumbo v1, " <<<<<<<<<<<< cancelNotification - BACKGROUND EXPORT ENABLED >>>>>>>>>>  "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$200(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/export/ExportService;->access$402(Lcom/sec/android/app/ve/export/ExportService;I)I

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$200(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/sec/android/app/ve/export/ExportService;->EXPORT_NOTFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$200(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/sec/android/app/ve/export/ExportService;->EXPORT_COMPLETEION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public changeNotification()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v5}, Lcom/sec/android/app/ve/export/ExportService;->access$200(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/NotificationManager;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v5}, Lcom/sec/android/app/ve/export/ExportService;->access$200(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/NotificationManager;

    move-result-object v5

    sget v6, Lcom/sec/android/app/ve/export/ExportService;->EXPORT_NOTFICATION_ID:I

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    sget-object v5, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/export/Export;->getIsBackgroundExport()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    new-instance v6, Landroid/app/Notification;

    sget-object v7, Lcom/sec/android/app/ve/VEApp;->gAdaper:Lcom/sec/android/app/ve/VEAdapter;

    invoke-interface {v7}, Lcom/sec/android/app/ve/VEAdapter;->getAppIconResource()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-static {v5, v6}, Lcom/sec/android/app/ve/export/ExportService;->access$502(Lcom/sec/android/app/ve/export/ExportService;Landroid/app/Notification;)Landroid/app/Notification;

    sget-object v5, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/export/Export;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/export/Export;->onNotifyClick()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v5, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/export/Export;->getMediaDBUriOfExportedFile()Landroid/net/Uri;

    move-result-object v4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "video/mp4"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v6

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-direct {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v5, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    iget-object v6, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v0, v7}, Lcom/sec/android/app/ve/export/Export;->changeNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;Z)V

    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/ve/export/ExportService;->access$502(Lcom/sec/android/app/ve/export/ExportService;Landroid/app/Notification;)Landroid/app/Notification;

    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v5}, Lcom/sec/android/app/ve/export/ExportService;->access$500(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v5}, Lcom/sec/android/app/ve/export/ExportService;->access$200(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/NotificationManager;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v5}, Lcom/sec/android/app/ve/export/ExportService;->access$200(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/NotificationManager;

    move-result-object v5

    sget v6, Lcom/sec/android/app/ve/export/ExportService;->EXPORT_COMPLETEION_ID:I

    iget-object v7, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v7}, Lcom/sec/android/app/ve/export/ExportService;->access$500(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public getExportProgress()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->getExportProgress()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initNotification()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v2, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/export/Export;->getIsBackgroundExport()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v2, "EXPORT"

    const-string/jumbo v3, " <<<<<<<<<<<< initNotification - BACKGROUND EXPORT ENABLED >>>>>>>>>>  "

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    const-string/jumbo v4, "notification"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/ve/export/ExportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-static {v3, v2}, Lcom/sec/android/app/ve/export/ExportService;->access$202(Lcom/sec/android/app/ve/export/ExportService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    new-instance v3, Landroid/app/Notification;

    sget-object v4, Lcom/sec/android/app/ve/VEApp;->gAdaper:Lcom/sec/android/app/ve/VEAdapter;

    invoke-interface {v4}, Lcom/sec/android/app/ve/VEAdapter;->getAppIconResource()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    sget-object v6, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/export/Export;->getOngoingNotificationStringID()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/export/ExportService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/export/ExportService;->access$302(Lcom/sec/android/app/ve/export/ExportService;Landroid/app/Notification;)Landroid/app/Notification;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    sget-object v3, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/export/Export;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "fromNotification"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/sec/android/app/ve/export/ExportService;->contentView:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-object v2, v2, Lcom/sec/android/app/ve/export/ExportService;->contentView:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v2, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    iget-object v3, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-object v4, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-object v4, v4, Lcom/sec/android/app/ve/export/ExportService;->contentView:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/ve/export/Export;->initiateNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-object v3, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-object v3, v3, Lcom/sec/android/app/ve/export/ExportService;->contentView:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/export/ExportService;->access$302(Lcom/sec/android/app/ve/export/ExportService;Landroid/app/Notification;)Landroid/app/Notification;

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportService;->access$300(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/Notification;

    move-result-object v2

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportService;->access$300(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/Notification;

    move-result-object v2

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportService;->access$300(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/Notification;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->priority:I

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    sget v3, Lcom/sec/android/app/ve/export/ExportService;->EXPORT_NOTFICATION_ID:I

    iget-object v4, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v4}, Lcom/sec/android/app/ve/export/ExportService;->access$300(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/ve/export/ExportService;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public isDefaultPause()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-boolean v0, v0, Lcom/sec/android/app/ve/export/ExportService;->defaultPaused:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEThreadAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pauseExport(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iput-boolean p1, v0, Lcom/sec/android/app/ve/export/ExportService;->defaultPaused:Z

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->pause()V

    :cond_0
    return-void
.end method

.method public resumeExport()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/ve/export/ExportService;->defaultPaused:Z

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/ve/export/ExportInterface;->resume(J)V

    :cond_0
    return-void
.end method

.method public startExport()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    new-instance v1, Lcom/sec/android/app/ve/export/ExportInterface;

    invoke-direct {v1}, Lcom/sec/android/app/ve/export/ExportInterface;-><init>()V

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/export/ExportService;->access$002(Lcom/sec/android/app/ve/export/ExportService;Lcom/sec/android/app/ve/export/ExportInterface;)Lcom/sec/android/app/ve/export/ExportInterface;

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v1}, Lcom/sec/android/app/ve/export/ExportService;->access$100(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/export/ExportInterface;->setAdapter(Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/ve/export/ExportInterface;->play(J)V

    return-void
.end method

.method public stopExport()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$000(Lcom/sec/android/app/ve/export/ExportService;)Lcom/sec/android/app/ve/export/ExportInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface;->stop()V

    :cond_0
    return-void
.end method

.method public updateNotification(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export;->getIsBackgroundExport()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$400(Lcom/sec/android/app/ve/export/ExportService;)I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0, p1}, Lcom/sec/android/app/ve/export/ExportService;->access$402(Lcom/sec/android/app/ve/export/ExportService;I)I

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-object v2, v2, Lcom/sec/android/app/ve/export/ExportService;->contentView:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/android/app/ve/export/Export;->updateNotificationContentView(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Builder;II)V

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    iget-object v1, v1, Lcom/sec/android/app/ve/export/ExportService;->contentView:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/export/ExportService;->access$302(Lcom/sec/android/app/ve/export/ExportService;Landroid/app/Notification;)Landroid/app/Notification;

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v0}, Lcom/sec/android/app/ve/export/ExportService;->access$200(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/sec/android/app/ve/export/ExportService;->EXPORT_NOTFICATION_ID:I

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportService$1;->this$0:Lcom/sec/android/app/ve/export/ExportService;

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportService;->access$300(Lcom/sec/android/app/ve/export/ExportService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
