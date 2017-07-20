.class public Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;
.super Ljava/lang/Object;
.source "WebResponse.java"


# instance fields
.field private mAttempt:I

.field private mCode:I

.field private mData:Ljava/lang/Object;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHttpResponseCode:I

.field private mMessage:Ljava/lang/String;

.field private mResult:Ljava/lang/String;

.field private mSuccess:Z

.field private mSummary:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mCode:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mHttpResponseCode:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mSuccess:Z

    return v0
.end method

.method public isHttpOk()Z
    .locals 2

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mHttpResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttempt(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mAttempt:I

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mCode:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mData:Ljava/lang/Object;

    return-void
.end method

.method public setHttpHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setHttpResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mHttpResponseCode:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mResult:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mSuccess:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WebResponse { mAttempt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mAttempt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mHttpResponseCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mHttpResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mSuccess : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mSummary : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mSummary:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mheaders : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
