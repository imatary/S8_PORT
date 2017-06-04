.class public Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;
.super Ljava/lang/Object;
.source "ReportStateContext.java"


# instance fields
.field private action:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isAppOnly:Z

.field private result:Z

.field private state:Lcom/samsung/android/app/omcagent/update/omc/ReportState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/ReportState;->UPDATE_OMC_VERSION:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/app/omcagent/update/omc/ReportState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    return-object v0
.end method

.method public isAppOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->isAppOnly:Z

    return v0
.end method

.method public isStartDM()Z
    .locals 2

    const-string v0, "com.samsung.omcagent.intent.USER_UPDATE"

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->result:Z

    return v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/omcagent/update/omc/ReportState;->run(Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;)Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/ReportState;

    return-void
.end method

.method public setAppOnly()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->isAppOnly:Z

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/omc/ReportStateContext;->result:Z

    return-void
.end method
