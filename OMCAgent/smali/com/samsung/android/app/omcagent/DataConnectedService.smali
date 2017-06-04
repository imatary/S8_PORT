.class public Lcom/samsung/android/app/omcagent/DataConnectedService;
.super Landroid/app/job/JobService;
.source "DataConnectedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;
    }
.end annotation


# static fields
.field static final DATA_JOB_INFO:Landroid/app/job/JobInfo;

.field static JOB_ID:I


# instance fields
.field mRunningParams:Landroid/app/job/JobParameters;

.field mTask:Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v1, 0x253

    sput v1, Lcom/samsung/android/app/omcagent/DataConnectedService;->JOB_ID:I

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "builder"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget v1, Lcom/samsung/android/app/omcagent/DataConnectedService;->JOB_ID:I

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/samsung/android/app/omcagent/DataConnectedService;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/omcagent/DataConnectedService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/omcagent/DataConnectedService;->DATA_JOB_INFO:Landroid/app/job/JobInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static scheduleJob(Landroid/content/Context;)V
    .locals 2

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    sget-object v1, Lcom/samsung/android/app/omcagent/DataConnectedService;->DATA_JOB_INFO:Landroid/app/job/JobInfo;

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "onStartJob"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/DataConnectedService;->mRunningParams:Landroid/app/job/JobParameters;

    new-instance v0, Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;-><init>(Lcom/samsung/android/app/omcagent/DataConnectedService;Lcom/samsung/android/app/omcagent/DataConnectedService$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/DataConnectedService;->mTask:Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/DataConnectedService;->mTask:Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;

    new-array v1, v3, [Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "onStopJob"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/DataConnectedService;->mTask:Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/DataConnectedService;->mTask:Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/omcagent/DataConnectedService$DataConnectTask;->cancel(Z)Z

    :cond_0
    return v2
.end method
