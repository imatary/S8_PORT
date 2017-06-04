.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;
.super Ljava/lang/Object;
.source "ShareResponse.java"


# instance fields
.field private mContentToken:Ljava/lang/String;

.field private mContentTokenExpiryTime:J

.field private mContentUri:Ljava/lang/String;

.field private mContentUrls:[Ljava/lang/String;

.field private mExpiryTime:J

.field private mFolderOrsUrl:Ljava/lang/String;

.field private mFolderToken:Ljava/lang/String;

.field private mFolderTokenExpiryTime:J

.field private mGroupId:Ljava/lang/String;

.field private mLocalPath:Ljava/lang/String;

.field private mRequestToken:J

.field private mShareId:J

.field private mUrls:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentToken:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTokenExpiryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentTokenExpiryTime:J

    return-wide v0
.end method

.method public getContentUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mExpiryTime:J

    return-wide v0
.end method

.method public getFolderToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderToken:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestToken()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getShareId()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mUrls:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    return-object v0
.end method

.method public initCreatePublicFolderTokenResponse(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentToken:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mExpiryTime:J

    return-void
.end method

.method public initDownloadStartedResponse(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareId:J

    return-void
.end method

.method public initFileDownloadedResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mLocalPath:Ljava/lang/String;

    return-void
.end method

.method public initPreparingShareResponse(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    return-void
.end method

.method public initShareStartedResponse(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareId:J

    return-void
.end method

.method public initUploadCompletedResponse(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mRequestToken:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareId:J

    return-void
.end method

.method public setContentToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentToken:Ljava/lang/String;

    return-void
.end method

.method public setContentTokenExpiryTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentTokenExpiryTime:J

    return-void
.end method

.method public setContentUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mContentUrls:[Ljava/lang/String;

    return-void
.end method

.method public setExpiryTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mExpiryTime:J

    return-void
.end method

.method public setFolderOrsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderOrsUrl:Ljava/lang/String;

    return-void
.end method

.method public setFolderToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderToken:Ljava/lang/String;

    return-void
.end method

.method public setFolderTokenExpiryTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mFolderTokenExpiryTime:J

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setShareId(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mShareId:J

    return-void
.end method

.method public setUrls([Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->mUrls:[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    return-void
.end method
