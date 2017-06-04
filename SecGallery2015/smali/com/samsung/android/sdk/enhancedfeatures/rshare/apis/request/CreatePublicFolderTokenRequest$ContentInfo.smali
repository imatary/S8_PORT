.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;
.super Ljava/lang/Object;
.source "CreatePublicFolderTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentInfo"
.end annotation


# instance fields
.field public contentUri:Landroid/net/Uri;

.field public remoteUri:Ljava/lang/String;

.field public updateType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    instance-of v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->updateType:I

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->updateType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->updateType:I

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->contentUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->contentUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->updateType:I

    if-ne v2, v1, :cond_3

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->remoteUri:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->remoteUri:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->remoteUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->updateType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->contentUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->contentUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
