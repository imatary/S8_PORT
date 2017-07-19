.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;
.super Ljava/lang/Object;
.source "OmcErrorResponse.java"


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private responseURI:Ljava/lang/String;

.field private retry:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;->responseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;->retry:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setResponseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;->responseURI:Ljava/lang/String;

    return-void
.end method

.method public setRetry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/OmcErrorResponse;->retry:Ljava/lang/String;

    return-void
.end method
