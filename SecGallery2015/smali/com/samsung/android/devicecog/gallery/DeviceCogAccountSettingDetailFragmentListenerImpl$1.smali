.class Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl$1;
.super Ljava/lang/Object;
.source "DeviceCogAccountSettingDetailFragmentListenerImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;->getInterimStateListener()Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

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

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;

    iget-object v2, v2, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    invoke-interface {v2, p1}, Lcom/samsung/android/devicecog/DeviceCogHandler;->setCurrentDCState(Lcom/samsung/android/sdk/bixby/data/State;)V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl$1;->this$0:Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;

    iget-object v2, v2, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    invoke-interface {v2, v1, v0}, Lcom/samsung/android/devicecog/DeviceCogHandler;->handleState(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
