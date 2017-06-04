.class public Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;
.super Ljava/lang/Object;
.source "SideloadingContext.java"


# instance fields
.field private context:Landroid/content/Context;

.field private omcPackagePath:Ljava/lang/String;

.field private state:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;->CHECK_FILES:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->state:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->omcPackagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getSourceOMCPackagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->omcPackagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->state:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->state:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;->run(Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;)Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingContext;->state:Lcom/samsung/android/app/omcagent/test/sideloading/SideloadingState;

    return-void
.end method
