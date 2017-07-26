.class public Lcom/naver/glink/android/sdk/api/Response;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "Response.java"


# instance fields
.field private errorCode:Ljava/lang/Integer;

.field private errorMessage:Ljava/lang/String;

.field private error_code:Ljava/lang/String;

.field protected message:Ljava/lang/String;

.field private moreInfo:Ljava/lang/String;

.field private status:Ljava/lang/Integer;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    return-void
.end method

.method public static getErrorMessage(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Response;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/api/Response;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    sget v0, Lcom/naver/glink/android/sdk/R$string;->network_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static showErrorToast(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/naver/glink/android/sdk/api/Response;->getErrorMessage(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getError()Lcom/naver/glink/android/sdk/api/GlinkError;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Response;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Response;->error_code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError;

    sget-object v2, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->OPEN_API_ERROR:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    iget v2, v2, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->code:I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/api/Response;->error_code:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/api/Response;->message:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/naver/glink/android/sdk/api/GlinkError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Response;->errorCode:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Response;->errorCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError;

    sget-object v2, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->OPEN_API_ERROR:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    iget v2, v2, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->code:I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/api/Response;->errorCode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/api/Response;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/naver/glink/android/sdk/api/GlinkError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Response;->errorCode:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Response;->status:Ljava/lang/Integer;

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/naver/glink/android/sdk/api/GlinkError;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/api/Response;->status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/Response;->errorCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/api/Response;->errorMessage:Ljava/lang/String;

    iget-object v4, p0, Lcom/naver/glink/android/sdk/api/Response;->moreInfo:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/naver/glink/android/sdk/api/GlinkError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Response;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/Response;->errorMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/api/Response;->tag:Ljava/lang/Object;

    return-void
.end method
