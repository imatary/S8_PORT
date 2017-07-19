.class public Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;
.super Ljava/lang/Object;
.source "RegisterStateContext.java"


# instance fields
.field private context:Landroid/content/Context;

.field private retryPush:I

.field private state:Lcom/samsung/android/app/omcagent/device/register/RegisterState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->retryPush:I

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState;->CHECK_REGISTER_DEVICE:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->state:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getRetryPush()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->retryPush:I

    return v0
.end method

.method public getState()Lcom/samsung/android/app/omcagent/device/register/RegisterState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->state:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    return-object v0
.end method

.method public increaseRetryPush()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->retryPush:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->retryPush:I

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->state:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/omcagent/device/register/RegisterState;->run(Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;)Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->state:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    return-void
.end method
