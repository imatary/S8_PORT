.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;
.source "CloudResponse.java"


# instance fields
.field private mAllowedExtensions:[Ljava/lang/String;

.field private mAuthCode:Ljava/lang/String;

.field private mChildren:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

.field private mDeleted:Ljava/lang/Boolean;

.field private mExpiredTime:Ljava/lang/Long;

.field private mLock:Z

.field private mNext:Ljava/lang/String;

.field private mOid:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPublicToken:Ljava/lang/String;

.field private mPublicUrl:Ljava/lang/String;

.field private mRevision:Ljava/lang/String;

.field private mServerCode:J

.field private mServerMsg:Ljava/lang/String;

.field private mSize:Ljava/lang/Long;

.field private mTag:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/Long;

.field private mType:Ljava/lang/String;

.field private mUserExpiryTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildren()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mChildren:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mNext:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public isFileDeleted()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mDeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toCasting(Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;)V
    .locals 4

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->oid:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mOid:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->path:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mPath:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->revision:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mRevision:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->timestamp:Ljava/lang/Long;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mTimestamp:Ljava/lang/Long;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->user_expiry_time:Ljava/lang/Long;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mUserExpiryTime:Ljava/lang/Long;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->expired_time:Ljava/lang/Long;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mExpiredTime:Ljava/lang/Long;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mType:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->next:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mNext:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->tag:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->deleted:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mDeleted:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->size:Ljava/lang/Long;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mSize:Ljava/lang/Long;

    iget-boolean v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->lock:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mLock:Z

    iget v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->resultCode:I

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->resultCode:I

    iget-wide v2, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->serverErrorCode:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->serverErrorCode:J

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->serverErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->serverErrorMsg:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->httpStatusCode:I

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->httpStatusCode:I

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->httpErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->httpErrorMsg:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->httpReqTdkId:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->httpReqTdkId:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->children:[Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->children:[Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->children:[Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;

    array-length v1, v1

    new-array v1, v1, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mChildren:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mChildren:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mChildren:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;->children:[Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->toCasting(Lcom/samsung/android/sdk/ssf/file/io/ListDirectoryResponse;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CloudResponse{mOid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mOid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRevision=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mRevision:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUserExpiryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mUserExpiryTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mExpiredTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mExpiredTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNext=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mNext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mDeleted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mSize:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mChildren:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAllowedExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mAllowedExtensions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServerCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mServerCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServerMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mServerMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPublicToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mPublicToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAuthCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mAuthCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPublicUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;->mPublicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
