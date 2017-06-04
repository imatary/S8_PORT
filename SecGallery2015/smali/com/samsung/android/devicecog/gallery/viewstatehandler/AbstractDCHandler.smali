.class public abstract Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "AbstractDCHandler.java"


# instance fields
.field final mActivity:Landroid/app/Activity;

.field final mObserver:Ljava/util/Observer;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/Observer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->mObserver:Ljava/util/Observer;

    invoke-virtual {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method protected getParamName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v1, p1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getParameterName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenStateId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSlotValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v1, p1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract startCommand(Ljava/lang/String;Ljava/util/List;)V
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

.method public startParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method
