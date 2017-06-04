.class public Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;
.super Ljava/lang/Object;
.source "PreloadPrepareStateContext.java"


# instance fields
.field private context:Landroid/content/Context;

.field private resInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;->VERIFY_PRELOAD_SOURCE_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getResInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->resInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;->run(Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;)Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareState;

    return-void
.end method

.method public setResInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/omc/PreloadPrepareStateContext;->resInfoList:Ljava/util/List;

    return-void
.end method
