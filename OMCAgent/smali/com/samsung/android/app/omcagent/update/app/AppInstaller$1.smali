.class Lcom/samsung/android/app/omcagent/update/app/AppInstaller$1;
.super Ljava/lang/Object;
.source "AppInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->notifyResult(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

.field final synthetic val$bSuccess:Z

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$1;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    iput-boolean p2, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$1;->val$bSuccess:Z

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$1;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$000(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$IMultiUserInstallerCallback;

    iget-boolean v2, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$1;->val$bSuccess:Z

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$IMultiUserInstallerCallback;->onResult(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInstaller$1;->this$0:Lcom/samsung/android/app/omcagent/update/app/AppInstaller;

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/update/app/AppInstaller;->access$000(Lcom/samsung/android/app/omcagent/update/app/AppInstaller;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    return-void
.end method
