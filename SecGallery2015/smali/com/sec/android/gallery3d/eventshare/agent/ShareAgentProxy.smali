.class public Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;
.super Ljava/lang/Object;
.source "ShareAgentProxy.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/ShareAgent;


# instance fields
.field private final mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    return-void
.end method


# virtual methods
.method public addMember(Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->addMember(Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;)V

    return-void
.end method

.method public cancel(JLcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->cancel(JLcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;)V

    return-void
.end method

.method public createArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->createArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;)V

    return-void
.end method

.method public createComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->createComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;)V

    return-void
.end method

.method public createFolder(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->createFolder(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;)V

    return-void
.end method

.method public createGroup(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->createGroup(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)V

    return-void
.end method

.method public createMultipleArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->createMultipleArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;)V

    return-void
.end method

.method public deleteComment(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/sec/android/gallery3d/eventshare/command/DeleteCommentCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->deleteComment(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/sec/android/gallery3d/eventshare/command/DeleteCommentCommand;)V

    return-void
.end method

.method public deleteGroup(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->deleteGroup(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;)V

    return-void
.end method

.method public deleteItem(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->deleteItem(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    return-void
.end method

.method public deleteMember(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->deleteMember(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;)V

    return-void
.end method

.method public download(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->download(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V

    return-void
.end method

.method public getArticleMetaCounter(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getArticleMetaCounter(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;)V

    return-void
.end method

.method public getContentTokenByGroupID(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getContentTokenByGroupID(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V

    return-void
.end method

.method public getExpireTime(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getExpireTime(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)V

    return-void
.end method

.method public getFolderInfo(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getFolderInfo(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;)V

    return-void
.end method

.method public getUrlExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getUrlExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)V

    return-void
.end method

.method public pause(JLcom/sec/android/gallery3d/eventshare/command/PauseCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->pause(JLcom/sec/android/gallery3d/eventshare/command/PauseCommand;)V

    return-void
.end method

.method public prepare(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->prepare(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V

    return-void
.end method

.method public prepareFolderToken(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->prepareFolderToken(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;)V

    return-void
.end method

.method public renewalExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->renewalExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)V

    return-void
.end method

.method public resumeDownload(JLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->resumeDownload(JLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V

    return-void
.end method

.method public resumeUpload(JLcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->resumeUpload(JLcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V

    return-void
.end method

.method public searchSocial(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->searchSocial(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public stop(JLcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->stop(JLcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;)V

    return-void
.end method

.method public updateArticleMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->updateArticleMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;)V

    return-void
.end method

.method public updateComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->updateComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;)V

    return-void
.end method

.method public updateGroupMember(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->updateGroupMember(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V

    return-void
.end method

.method public updateStoryName(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->updateStoryName(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;->mEvenShareAgent:Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V

    return-void
.end method
