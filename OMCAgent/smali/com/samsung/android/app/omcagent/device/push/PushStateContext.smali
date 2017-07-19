.class public Lcom/samsung/android/app/omcagent/device/push/PushStateContext;
.super Ljava/lang/Object;
.source "PushStateContext.java"


# instance fields
.field private content:Lcom/samsung/android/app/omcagent/device/push/PushContent;

.field private context:Landroid/content/Context;

.field private pushMessage:Ljava/lang/String;

.field private state:Lcom/samsung/android/app/omcagent/device/push/PushState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/omcagent/device/push/PushContent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/omcagent/device/push/PushState;->ANALYZE_PUSH_MESSAGE:Lcom/samsung/android/app/omcagent/device/push/PushState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->state:Lcom/samsung/android/app/omcagent/device/push/PushState;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->pushMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->content:Lcom/samsung/android/app/omcagent/device/push/PushContent;

    return-void
.end method


# virtual methods
.method public getContent()Lcom/samsung/android/app/omcagent/device/push/PushContent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->content:Lcom/samsung/android/app/omcagent/device/push/PushContent;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getPushMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->pushMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/app/omcagent/device/push/PushState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->state:Lcom/samsung/android/app/omcagent/device/push/PushState;

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->state:Lcom/samsung/android/app/omcagent/device/push/PushState;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/omcagent/device/push/PushState;->run(Lcom/samsung/android/app/omcagent/device/push/PushStateContext;)Lcom/samsung/android/app/omcagent/device/push/PushState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->state:Lcom/samsung/android/app/omcagent/device/push/PushState;

    return-void
.end method
