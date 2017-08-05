.class Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;
.super Landroid/content/BroadcastReceiver;
.source "AppInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/app/AppInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallerListener"
.end annotation


# instance fields
.field install:Z

.field final synthetic this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->install:Z

    return-void
.end method


# virtual methods
.method install(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->install:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], install ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->install:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v3, "android.content.pm.extra.STATUS"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageInstallerCallback: result ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], message ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], packageName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPackageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$100(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$100(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$100(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "return"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    packed-switch v2, :pswitch_data_0

    iget-boolean v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->install:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, " INSTALL failed."

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v5, v0}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$600(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$300(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;ZLjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$400(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->onPackageInstalled(Ljava/lang/String;I)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$500(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)V

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "STATUS_PENDING_USER_ACTION"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$200(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Landroid/content/Context;

    move-result-object v4

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->install:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, " INSTALL STATUS_SUCCESS"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    const-string v4, "0"

    invoke-static {v3, v6, v4}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$300(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;ZLjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$400(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Lcom/samsung/android/app/omcagent/update/app/PackageInstallObserver;->onPackageInstalled(Ljava/lang/String;I)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$500(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
