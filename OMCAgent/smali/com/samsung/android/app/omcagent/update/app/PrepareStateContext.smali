.class public Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;
.super Ljava/lang/Object;
.source "PrepareStateContext.java"


# instance fields
.field private context:Landroid/content/Context;

.field private state:Lcom/samsung/android/app/omcagent/update/app/PrepareState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/PrepareState;->START_APPLICATION_PREPARE:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/app/omcagent/update/app/PrepareState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/omcagent/update/app/PrepareState;->run(Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;)Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/PrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/app/PrepareState;

    return-void
.end method
