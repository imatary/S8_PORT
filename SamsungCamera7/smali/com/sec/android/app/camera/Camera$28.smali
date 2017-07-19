.class Lcom/sec/android/app/camera/Camera$28;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCameraEnterCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$200(Lcom/sec/android/app/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x2

    new-array v4, v2, [Lcom/sec/android/app/camera/Camera$CallStateListener;

    new-instance v5, Lcom/sec/android/app/camera/Camera$CallStateListener;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {v5, v6, v2}, Lcom/sec/android/app/camera/Camera$CallStateListener;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    aput-object v5, v4, v8

    new-instance v5, Lcom/sec/android/app/camera/Camera$CallStateListener;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {v5, v6, v2}, Lcom/sec/android/app/camera/Camera$CallStateListener;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/Camera;->access$4002(Lcom/sec/android/app/camera/Camera;[Lcom/sec/android/app/camera/Camera$CallStateListener;)[Lcom/sec/android/app/camera/Camera$CallStateListener;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$4000(Lcom/sec/android/app/camera/Camera;)[Lcom/sec/android/app/camera/Camera$CallStateListener;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$4000(Lcom/sec/android/app/camera/Camera;)[Lcom/sec/android/app/camera/Camera$CallStateListener;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/CallState;->registerCallStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    new-array v3, v7, [Lcom/sec/android/app/camera/Camera$CallStateListener;

    new-instance v4, Lcom/sec/android/app/camera/Camera$CallStateListener;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v4, v5}, Lcom/sec/android/app/camera/Camera$CallStateListener;-><init>(Lcom/sec/android/app/camera/Camera;)V

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$4002(Lcom/sec/android/app/camera/Camera;[Lcom/sec/android/app/camera/Camera$CallStateListener;)[Lcom/sec/android/app/camera/Camera$CallStateListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$4000(Lcom/sec/android/app/camera/Camera;)[Lcom/sec/android/app/camera/Camera$CallStateListener;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/CallState;->registerCallStateListener(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$4100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraExecutorManager;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Lcom/sec/android/app/camera/CameraExecutorManager;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/camera/CameraExecutorManager;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Camera;->access$4102(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/CameraExecutorManager;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$4100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraExecutorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->init()V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from-bixby"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$4100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraExecutorManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->setIsWaitCommandResult(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$4100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraExecutorManager;

    move-result-object v2

    const-string v3, "Camera"

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method
