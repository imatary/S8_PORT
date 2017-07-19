.class public Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;
.super Ljava/lang/Object;
.source "PrepareStateContext.java"


# instance fields
.field private action:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private packagePath:Ljava/lang/String;

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

.field private state:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

.field private uimode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->VERIFY_SOURCE_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->context:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->resInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getSourcePackagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/app/omcagent/update/omc/PrepareState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    return-object v0
.end method

.method public getUImode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->uimode:I

    return v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/omcagent/update/omc/PrepareState;->run(Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;)Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

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

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->resInfoList:Ljava/util/List;

    return-void
.end method

.method public setSourcePackagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->packagePath:Ljava/lang/String;

    return-void
.end method

.method public setUImode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;->uimode:I

    return-void
.end method
