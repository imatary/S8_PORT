.class public Lcom/naver/glink/android/sdk/api/GlinkError;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "GlinkError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/api/GlinkError$Status;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final errorMessage:Ljava/lang/String;

.field public final moreInfo:Ljava/lang/String;

.field public final status:Lcom/naver/glink/android/sdk/api/GlinkError$Status;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    invoke-static {p1}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->by(I)Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->status:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    iput p2, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorCode:I

    iput-object p3, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->moreInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isAgreeTermsError()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->status:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->UNAUTHORIZED:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorCode:I

    const/16 v1, 0x232d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthenticationError()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/naver/glink/android/sdk/api/GlinkError$1;->$SwitchMap$com$naver$glink$android$sdk$api$GlinkError$Status:[I

    iget-object v3, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->status:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    invoke-virtual {v3}, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorCode:I

    const/16 v3, 0x18

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorMessage:Ljava/lang/String;

    const-string/jumbo v3, "Authentication"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorCode:I

    const/16 v3, 0x2329

    if-ne v2, v3, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isCloseMemberError()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->status:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->FORBIDDEN:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorCode:I

    const/16 v1, 0x139d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGeneralError()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->status:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->INTERNAL_SERVER_ERROR:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorCode:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoginError()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->status:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->UNAUTHORIZED:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorCode:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->status:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->FORBIDDEN:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorCode:I

    const/16 v1, 0x139e

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedJoinError()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->status:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->FORBIDDEN:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorCode:I

    const/16 v1, 0x232b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingJoinError()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->status:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    sget-object v1, Lcom/naver/glink/android/sdk/api/GlinkError$Status;->UNAUTHORIZED:Lcom/naver/glink/android/sdk/api/GlinkError$Status;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/api/GlinkError;->errorCode:I

    const/16 v1, 0xfb0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
