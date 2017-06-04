.class public Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;
.super Landroid/app/job/JobService;
.source "EventPolicyService.java"


# static fields
.field private static final JOB_ID:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "EventPolicyService"


# instance fields
.field private mJobParam:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public callJobFinished(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;->mJobParam:Landroid/app/job/JobParameters;

    if-nez v2, :cond_0

    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const/16 v2, 0x2711

    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;->mJobParam:Landroid/app/job/JobParameters;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.SETEVENTSHAREPOLICY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;->sendBroadcast(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;->mJobParam:Landroid/app/job/JobParameters;

    const/4 v1, 0x0

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public schedule(Landroid/content/Context;J)V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v3, "EventPolicyService"

    const-string/jumbo v4, "EventPolicyService schedule"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/sec/android/gallery3d/eventshare/utils/EventPolicyService;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "jobscheduler"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x2711

    invoke-direct {v0, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0, p2, p3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method
