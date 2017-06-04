.class Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler$1;
.super Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;
.source "InstallAppUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler$1;->this$1:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public response(IZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler$1;->this$1:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler$1;->this$1:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

    iget-object v2, v2, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->installing(Landroid/content/Context;Landroid/app/Service;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler$1;->this$1:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/update/app/BadgeManager;->updateBadgeCount(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler$1;->this$1:Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/update/InstallAppUIService$ServiceHandler;->this$0:Lcom/samsung/android/app/omcagent/update/InstallAppUIService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/update/InstallAppUIService;->stopSelf(I)V

    :cond_0
    return-void
.end method
