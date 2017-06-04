.class public Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;
.super Ljava/lang/Object;
.source "ArticleInfoRequest.java"


# instance fields
.field protected app_id:Ljava/lang/String;

.field protected description:Ljava/lang/String;

.field protected group_id:Ljava/lang/String;

.field protected meta_counter:Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;

.field protected meta_data:Lcom/samsung/android/sdk/ssf/social/io/MetaData;

.field protected name:Ljava/lang/String;

.field protected permission_set_id:I

.field protected push_notification:Ljava/lang/Boolean;

.field protected sid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->description:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->group_id:Ljava/lang/String;

    return-void
.end method

.method public setMetaCounter(Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->meta_counter:Lcom/samsung/android/sdk/ssf/social/io/MetaCounter;

    return-void
.end method

.method public setMetaData(Lcom/samsung/android/sdk/ssf/social/io/MetaData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->meta_data:Lcom/samsung/android/sdk/ssf/social/io/MetaData;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setPermissionSetId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->permission_set_id:I

    return-void
.end method

.method public setPushNotification(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->push_notification:Ljava/lang/Boolean;

    return-void
.end method

.method public setSid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoRequest;->sid:I

    return-void
.end method
