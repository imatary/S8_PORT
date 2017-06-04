.class abstract Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;
.super Ljava/lang/Object;
.source "AbsDeviceCogActivityHandlerImpl.java"

# interfaces
.implements Lcom/samsung/android/devicecog/DeviceCogHandler;


# instance fields
.field final CMD_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->init()V

    return-void
.end method


# virtual methods
.method abstract getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.end method

.method public handleParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method public handleSplitState(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "AbsDCActivityHandleImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BixbyGallery : handleSplitState() ids = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;->getNextExpectedState(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    return-object v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleState(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const-string/jumbo v3, "AbsDCActivityHandleImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleState() : stateId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v3, "AbsDCActivityHandleImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleState() : not support stateId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a0515

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p1, v4, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-virtual {v3, v0, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method abstract init()V
.end method

.method public onScreenStates()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "DetailView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "SHOW_BAR_FOR_DETAIL_VIEW"

    const/16 v4, 0x3a98

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurrentDCState(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 7

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "SET_CURRENT_DC_STATE"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method
