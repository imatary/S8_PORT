.class public Lcom/samsung/android/common/diagmon/DiagMonV1;
.super Ljava/lang/Object;
.source "DiagMonV1.java"

# interfaces
.implements Lcom/samsung/android/common/diagmon/DiagMonInterface;


# static fields
.field private static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final REPORT_ERROR_INTENT:Ljava/lang/String; = "com.sec.android.diagmon.intent.REPORT_ERROR"

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final UI_MODE:Ljava/lang/String; = "uimode"

.field private static final WORK_ID:Ljava/lang/String; = "workId"


# instance fields
.field private information:Lcom/samsung/android/common/diagmon/DiagMonImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/DiagMonV1;->information:Lcom/samsung/android/common/diagmon/DiagMonImpl;

    return-void
.end method


# virtual methods
.method public sendReport()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.diagmon.intent.REPORT_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "serviceId"

    iget-object v2, p0, Lcom/samsung/android/common/diagmon/DiagMonV1;->information:Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {v2}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uimode"

    iget-object v2, p0, Lcom/samsung/android/common/diagmon/DiagMonV1;->information:Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {v2}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->getUI()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "errorCode"

    iget-object v2, p0, Lcom/samsung/android/common/diagmon/DiagMonV1;->information:Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {v2}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "workId"

    iget-object v2, p0, Lcom/samsung/android/common/diagmon/DiagMonV1;->information:Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {v2}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonV1;->information:Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {v1}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
