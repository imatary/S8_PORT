.class public interface abstract Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.super Ljava/lang/Object;
.source "DCCommandExecutable.java"


# virtual methods
.method public abstract getDCScreenStateId()Ljava/lang/String;
.end method

.method public abstract getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
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

.method public abstract onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
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

.method public abstract onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
.end method
