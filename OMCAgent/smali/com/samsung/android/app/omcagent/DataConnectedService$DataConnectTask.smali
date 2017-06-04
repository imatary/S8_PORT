.class Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;
.super Landroid/os/AsyncTask;
.source "DataConnectedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/DataConnectedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataConnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/app/job/JobParameters;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/DataConnectedService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/omcagent/DataConnectedService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;->this$0:Lcom/samsung/android/app/omcagent/DataConnectedService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/omcagent/DataConnectedService;Lcom/samsung/android/app/omcagent/DataConnectedService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;-><init>(Lcom/samsung/android/app/omcagent/DataConnectedService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;->doInBackground([Landroid/app/job/JobParameters;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/app/job/JobParameters;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    aget-object v0, p1, v5

    sget-object v1, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;->this$0:Lcom/samsung/android/app/omcagent/DataConnectedService;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/DataConnectedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/device/register/Register;->isRegisterCompleted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Register Device is resumed..."

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;->this$0:Lcom/samsung/android/app/omcagent/DataConnectedService;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/DataConnectedService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.omcagent.intent.REGISTER_DEVICEINFO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;->this$0:Lcom/samsung/android/app/omcagent/DataConnectedService;

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/app/omcagent/DataConnectedService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 v1, 0x0

    return-object v1
.end method
