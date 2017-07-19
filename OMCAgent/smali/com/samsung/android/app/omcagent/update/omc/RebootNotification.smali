.class public Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;
.super Ljava/lang/Object;
.source "RebootNotification.java"


# static fields
.field public static final ACTION_INSTALL_START:Ljava/lang/String; = "com.samsung.android.omcagent.intent.INSTALL_START"

.field public static final ACTION_INSTALL_WAIT:Ljava/lang/String; = "com.samsung.android.omcagent.intent.INSTALL_WAIT"

.field private static PACKAGE_NAME_FOTAAGENT:Ljava/lang/String;

.field public static instance:Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;->instance:Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;

    const-string v0, "com.wssyncmldm"

    sput-object v0, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;->PACKAGE_NAME_FOTAAGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFotaActiveScreen(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;->PACKAGE_NAME_FOTAAGENT:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/samsung/android/common/util/GeneralUtils;->isFOTAScreen(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FOTA Screen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public rebooting(Landroid/content/Context;)V
    .locals 10

    const v7, 0x7f08006f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    sget-object v5, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v6, "NotificationManager is empty"

    invoke-virtual {v5, v6}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v5, 0x67

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v5, 0x14000020

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-static {p1, v8, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f080062

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v6, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const-string v6, "sys"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f02002b

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    new-array v6, v8, [J

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.app.omcagent.intent.NOTIFICATION_DELETED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    const/16 v5, 0x69

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {v9}, Lcom/samsung/android/common/util/GeneralUtils;->stopProcessLog(I)V

    goto/16 :goto_0
.end method

.method public remove(Landroid/content/Context;)V
    .locals 3

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "NotificationManager is empty"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Remove Reboot Notification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0
.end method
