.class final Lcom/samsung/android/app/omcagent/update/omc/ReportState$2;
.super Ljava/lang/Object;
.source "ReportState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/omc/ReportState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/ReportState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;)Lcom/samsung/android/app/omcagent/update/omc/ReportState;
    .locals 3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Report State: Reboot Device to apply OMC feature"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/omcagent/ui/OmcRebootActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/omc/ReportState$2;->FINISH_RESULT_REPORT:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "REBOOT_DEVICE"

    return-object v0
.end method
