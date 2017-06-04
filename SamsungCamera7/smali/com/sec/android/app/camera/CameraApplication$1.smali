.class Lcom/sec/android/app/camera/CameraApplication$1;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraApplication;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraApplication$1;->this$0:Lcom/sec/android/app/camera/CameraApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraApplication$1;->this$0:Lcom/sec/android/app/camera/CameraApplication;

    # getter for: Lcom/sec/android/app/camera/CameraApplication;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraApplication;->access$000(Lcom/sec/android/app/camera/CameraApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraApplication$1;->this$0:Lcom/sec/android/app/camera/CameraApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "from-bixby"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraApplication$1;->this$0:Lcom/sec/android/app/camera/CameraApplication;

    # getter for: Lcom/sec/android/app/camera/CameraApplication;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraApplication;->access$000(Lcom/sec/android/app/camera/CameraApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string v4, "Camera"

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraApplication$1;->this$0:Lcom/sec/android/app/camera/CameraApplication;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isSecureKeyguardLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isSecure"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraApplication$1;->this$0:Lcom/sec/android/app/camera/CameraApplication;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraApplication;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
