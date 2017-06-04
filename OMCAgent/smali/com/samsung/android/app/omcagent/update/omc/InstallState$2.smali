.class final Lcom/samsung/android/app/omcagent/update/omc/InstallState$2;
.super Ljava/lang/Object;
.source "InstallState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/omc/InstallState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/InstallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;)Lcom/samsung/android/app/omcagent/update/omc/InstallState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState$2;->COPY_SOURCES_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CHECK_DEVICE_STATE"

    return-object v0
.end method
