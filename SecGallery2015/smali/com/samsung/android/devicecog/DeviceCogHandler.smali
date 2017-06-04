.class public interface abstract Lcom/samsung/android/devicecog/DeviceCogHandler;
.super Ljava/lang/Object;
.source "DeviceCogHandler.java"


# virtual methods
.method public abstract handleParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
.end method

.method public abstract handleSplitState(Ljava/util/List;)Ljava/lang/String;
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
.end method

.method public abstract handleState(Ljava/lang/String;Ljava/util/List;)V
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
.end method

.method public abstract onScreenStates()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
.end method

.method public abstract setCurrentDCState(Lcom/samsung/android/sdk/bixby/data/State;)V
.end method
