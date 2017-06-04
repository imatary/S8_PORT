.class Lcom/samsung/android/app/omcagent/HandleWifiIntentService$1;
.super Ljava/lang/Object;
.source "HandleWifiIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/HandleWifiIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/HandleWifiIntentService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/HandleWifiIntentService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/HandleWifiIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/HandleWifiIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->instance:Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->setRun(Ljava/lang/Boolean;)V

    return-void
.end method
