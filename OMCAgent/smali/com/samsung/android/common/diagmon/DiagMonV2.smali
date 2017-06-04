.class public Lcom/samsung/android/common/diagmon/DiagMonV2;
.super Ljava/lang/Object;
.source "DiagMonV2.java"

# interfaces
.implements Lcom/samsung/android/common/diagmon/DiagMonInterface;


# instance fields
.field private information:Lcom/samsung/android/common/diagmon/DiagMonImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/DiagMonV2;->information:Lcom/samsung/android/common/diagmon/DiagMonImpl;

    return-void
.end method


# virtual methods
.method public sendReport()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "uploadMO"

    iget-object v2, p0, Lcom/samsung/android/common/diagmon/DiagMonV2;->information:Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {v2}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->getUploadMO()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonV2;->information:Lcom/samsung/android/common/diagmon/DiagMonImpl;

    invoke-virtual {v1}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
