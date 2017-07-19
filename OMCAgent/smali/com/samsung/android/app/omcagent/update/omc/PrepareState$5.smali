.class final Lcom/samsung/android/app/omcagent/update/omc/PrepareState$5;
.super Ljava/lang/Object;
.source "PrepareState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/omc/PrepareState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/PrepareState;
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
.method public run(Lcom/samsung/android/app/omcagent/update/omc/PrepareStateContext;)Lcom/samsung/android/app/omcagent/update/omc/PrepareState;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/PrepareState$5;->PREPARED_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/PrepareState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "RETRY_CHECK_APPLICATION"

    return-object v0
.end method
