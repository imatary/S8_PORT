.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/internal/common/BaseErrorResponse;
.source "EnhancedShareErrorResponse.java"


# instance fields
.field private contentToken:Ljava/lang/String;

.field private data:Landroid/os/Bundle;

.field private errorDetail:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private requestToken:J

.field private shareId:J

.field private userData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/BaseErrorResponse;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->errorDetail:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/BaseErrorResponse;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->errorDetail:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorCode(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorMessage(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorDetail(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->contentToken:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->errorDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestToken()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->requestToken:J

    return-wide v0
.end method

.method public getShareId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->shareId:J

    return-wide v0
.end method

.method public setContentToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->contentToken:Ljava/lang/String;

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->data:Landroid/os/Bundle;

    return-void
.end method

.method public setErrorDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->errorDetail:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setRequestToken(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->requestToken:J

    return-void
.end method

.method public setShareId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->shareId:J

    return-void
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->userData:Landroid/os/Bundle;

    return-void
.end method
