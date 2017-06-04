.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;
.source "GetArticleMetaDataResponse.java"


# instance fields
.field protected article_id:Ljava/lang/String;

.field protected created_at:J

.field protected meta_key:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->article_id:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->created_at:J

    return-void
.end method

.method public setMetaKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->meta_key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->value:Ljava/lang/String;

    return-void
.end method
