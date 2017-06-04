.class Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl$1;
.super Ljava/lang/Object;
.source "DeviceCogAboutPageActivityListenerImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;->getInterimStateListener()Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    invoke-interface {v0, p1}, Lcom/samsung/android/devicecog/DeviceCogHandler;->handleParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->resetDCState(Landroid/content/Context;)V

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogHandler;->onScreenStates()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;

    iget-object v2, v2, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    invoke-interface {v2, p1}, Lcom/samsung/android/devicecog/DeviceCogHandler;->setCurrentDCState(Lcom/samsung/android/sdk/bixby/data/State;)V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;

    iget-object v2, v2, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/devicecog/DeviceCogHandler;->handleState(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
