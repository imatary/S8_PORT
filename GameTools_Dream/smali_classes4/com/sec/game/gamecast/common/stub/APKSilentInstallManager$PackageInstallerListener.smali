.class Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;
.super Landroid/content/BroadcastReceiver;
.source "APKSilentInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallerListener"
.end annotation


# instance fields
.field install:Z

.field final synthetic this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->install:Z

    return-void
.end method


# virtual methods
.method install(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->install:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$200(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], install ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->install:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "android.content.pm.extra.STATUS"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$200(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PackageInstallerCallback: result ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], message ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], packageName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$200(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "INSTALL failed."

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    invoke-static {v3, v2}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$400(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;I)V

    :goto_0
    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$500(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)V

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$200(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "STATUS_PENDING_USER_ACTION"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$300(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$200(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "STATUS_SUCCESS"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager$PackageInstallerListener;->this$0:Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;->access$400(Lcom/sec/game/gamecast/common/stub/APKSilentInstallManager;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
