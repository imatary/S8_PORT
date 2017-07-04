.class Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl$1;
.super Ljava/lang/Object;
.source "DeviceCogApplicationListenerImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->onDeviceCogApplicationCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->access$000(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->resetDCState(Landroid/content/Context;)V

    return-void
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

    invoke-static {v2, v1}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->access$100(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->access$200(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;)Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;->executeStateOnActivity(Lcom/samsung/android/sdk/bixby/data/State;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->access$300(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;)Lcom/samsung/android/devicecog/DeviceCogHandler;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/devicecog/DeviceCogHandler;->setCurrentDCState(Lcom/samsung/android/sdk/bixby/data/State;)V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->access$300(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;)Lcom/samsung/android/devicecog/DeviceCogHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/devicecog/DeviceCogHandler;->handleState(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
