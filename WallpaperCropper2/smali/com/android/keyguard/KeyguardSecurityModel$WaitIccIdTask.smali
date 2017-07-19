.class Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;
.super Landroid/os/AsyncTask;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitIccIdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityModel;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecurityModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/keyguard/KeyguardSecurityModel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;-><init>(Lcom/android/keyguard/KeyguardSecurityModel;)V

    return-void
.end method


# virtual methods
.method protected varargs declared-synchronized doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->access$100(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xa

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    if-lez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$000()Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v1, v1, -0x1

    :try_start_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->access$100(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->access$200(Lcom/android/keyguard/KeyguardSecurityModel;Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->access$402(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "verify_sim_pin"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->this$0:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->access$500(Lcom/android/keyguard/KeyguardSecurityModel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityModel$WaitIccIdTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
