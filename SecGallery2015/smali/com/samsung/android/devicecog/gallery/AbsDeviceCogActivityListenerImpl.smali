.class abstract Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;
.super Ljava/lang/Object;
.source "AbsDeviceCogActivityListenerImpl.java"

# interfaces
.implements Lcom/samsung/android/devicecog/DeviceCogActivityListener;


# instance fields
.field final mActivity:Landroid/app/Activity;

.field mExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

.field final mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->createDeviceCogHandler()Lcom/samsung/android/devicecog/DeviceCogHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mExecutable:Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->createDeviceCogHandler()Lcom/samsung/android/devicecog/DeviceCogHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    return-void
.end method


# virtual methods
.method protected abstract createDeviceCogHandler()Lcom/samsung/android/devicecog/DeviceCogHandler;
.end method

.method abstract getInterimStateListener()Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;
.end method

.method abstract getMultiPathRuleListener()Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;
.end method

.method logDCState(Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    instance-of v1, v1, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    check-cast v1, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    check-cast v1, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    :cond_1
    return-void
.end method

.method public onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "DCActivityListenerImpl"

    const-string/jumbo v1, "onDeviceCogActivityOnBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseForRuleCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceCogActivityPause()V
    .locals 3

    const-string/jumbo v0, "DCActivityListenerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BixbyGallery : onDeviceCogActivityPause() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->EXIT:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->logDCState(Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setMultiPathRuleListener(Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;)V

    return-void
.end method

.method public onDeviceCogActivityResume()V
    .locals 3

    const-string/jumbo v0, "DCActivityListenerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BixbyGallery : onDeviceCogActivityResume() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->getInterimStateListener()Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->getMultiPathRuleListener()Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setMultiPathRuleListener(Lcom/samsung/android/sdk/bixby/BixbyApi$MultiPathRuleListener;)V

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityListenerImpl;->logDCState(Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    return-void
.end method
