.class public interface abstract Lcom/sec/android/gallery3d/eventshare/ShareAgent;
.super Ljava/lang/Object;
.source "ShareAgent.java"


# virtual methods
.method public abstract addMember(Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;)V
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
.end method

.method public abstract cancel(JLcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;)V
.end method

.method public abstract createArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;)V
.end method

.method public abstract createComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;)V
.end method

.method public abstract createFolder(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;)V
.end method

.method public abstract createGroup(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)V
.end method

.method public abstract createMultipleArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;)V
.end method

.method public abstract deleteComment(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/sec/android/gallery3d/eventshare/command/DeleteCommentCommand;)V
.end method

.method public abstract deleteGroup(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;)V
.end method

.method public abstract deleteItem(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
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
.end method

.method public abstract deleteMember(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;)V
.end method

.method public abstract download(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V
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
.end method

.method public abstract getArticleMetaCounter(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;)V
.end method

.method public abstract getContentTokenByGroupID(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
.end method

.method public abstract getExpireTime(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)V
.end method

.method public abstract getFolderInfo(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;)V
.end method

.method public abstract getUrlExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)V
.end method

.method public abstract pause(JLcom/sec/android/gallery3d/eventshare/command/PauseCommand;)V
.end method

.method public abstract prepare(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
.end method

.method public abstract prepareFolderToken(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;)V
.end method

.method public abstract renewalExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)V
.end method

.method public abstract resumeDownload(JLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V
.end method

.method public abstract resumeUpload(JLcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V
.end method

.method public abstract searchSocial(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract stop(JLcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;)V
.end method

.method public abstract updateArticleMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;)V
.end method

.method public abstract updateComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;)V
.end method

.method public abstract updateGroupMember(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V
.end method

.method public abstract updateStoryName(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V
.end method

.method public abstract upload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V
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
.end method
