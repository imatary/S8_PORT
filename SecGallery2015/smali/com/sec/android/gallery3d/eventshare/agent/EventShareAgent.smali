.class public Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;
.super Ljava/lang/Object;
.source "EventShareAgent.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/ShareAgent;


# static fields
.field private static final OPTIONAL_ID_MAX_LEN:I = 0xfe

.field private static final TAG:Ljava/lang/String; = "EventShareAgent"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getOrsServerURLByContentToken(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getFolderTokenByContentToken(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V

    return-void
.end method

.method private getFolderTokenByContentToken(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$4;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$4;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;ILjava/lang/String;)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    const-string/jumbo v1, "EventShareAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content_token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getPublicFolderToken(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    :cond_1
    return-void
.end method

.method private getOrsServerURLByContentToken(Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    .locals 6

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$3;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getORSServerURL(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    return-void
.end method


# virtual methods
.method public addMember(Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;)V
    .locals 11
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

    const/16 v10, 0xfe

    const/4 v9, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMSISDN(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNameWithNormalNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v7, "EventShareAgent"

    const-string/jumbo v8, "msisdn and duid are all null"

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_2

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;

    invoke-direct {v7, v0, v3, v9}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;

    invoke-direct {v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;-><init>()V

    invoke-virtual {v6, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;->setMembers(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_4
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v6

    invoke-virtual {v6, v4, p3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->addGroupMembers(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;)V

    :cond_5
    return-void
.end method

.method public cancel(JLcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->cancel(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    return-void
.end method

.method public createArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateArticleCommand;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->createArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;)V

    return-void
.end method

.method public createComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateCommentCommand;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->createComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;)V

    return-void
.end method

.method public createFolder(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;)V
    .locals 3

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$Builder;->addGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->createPublicFolderToken(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    return-void
.end method

.method public createGroup(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)V
    .locals 5

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;-><init>()V

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->setGroupName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;

    move-result-object v3

    const-string/jumbo v4, "Invitation to Gallery Channel"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;

    move-result-object v3

    const-string/jumbo v4, "GA2"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->setType(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getServiceId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->setServiceId(I)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->setOptionalId(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->createGroup(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "EventShareAgent"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createMultipleArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;Lcom/sec/android/gallery3d/eventshare/command/CreateMultipleArticleCommand;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->createMultiple(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;)V

    return-void
.end method

.method public deleteComment(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/sec/android/gallery3d/eventshare/command/DeleteCommentCommand;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->deleteComment(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    return-void
.end method

.method public deleteGroup(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "EventShareAgent"

    const-string/jumbo v3, "fail deleteGroup. group id is null"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_3
    :try_start_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->deleteGroup(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "EventShareAgent"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteItem(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 3
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

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$Builder;->addDeletePaths(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$Builder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;->ONLYONE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$Builder;->setPushType(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$PushType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->deletePublicMode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    return-void
.end method

.method public deleteMember(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;)V
    .locals 4

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest$Builder;->setMemberId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->deleteGroupMember(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "EventShareAgent"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V
    .locals 7
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

    const/4 v6, 0x1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadItem;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/.face/.shareEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_3

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;-><init>()V

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->addContents(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->setOverwrite(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->setDownloadPath(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;

    move-result-object v3

    :goto_1
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v4

    invoke-virtual {v4, v3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->downloadContentsPublicMode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;)V

    return-void

    :cond_3
    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;-><init>()V

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->addContents(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v4

    const/16 v5, 0x2f8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->setThumb(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->setOverwrite(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->setDownloadPath(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;

    move-result-object v3

    goto :goto_1
.end method

.method public getArticleMetaCounter(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/sec/android/gallery3d/eventshare/command/GetArticleMetaCounterCommand;)V
    .locals 6

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getArticleMetaCounter(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;)V

    return-void
.end method

.method public getContentTokenByGroupID(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    .locals 5

    const-string/jumbo v2, "EventShareAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getContentTokenByGroupID groupId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", eventName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$2;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$2;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest$Builder;-><init>()V

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest$Builder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getSharedContentsList(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)V

    :cond_1
    return-void
.end method

.method public getExpireTime(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "EventShareAgent"

    const-string/jumbo v1, "cancel getExpireTime. group id is null"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getFolderExpiryTime(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    goto :goto_0
.end method

.method public getFolderInfo(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;)V
    .locals 6

    const-string/jumbo v2, "EventShareAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sync time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->setContentDeletedStatus(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->setTimestamp(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->setContentCount(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->setStartFileName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v2

    invoke-virtual {v2, v1, p5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getFolderInfo(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;)V

    return-void
.end method

.method public getUrlExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getContentsTokenByGroupID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getWebURLs(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    :cond_2
    return-void
.end method

.method public pause(JLcom/sec/android/gallery3d/eventshare/command/PauseCommand;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->pause(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    return-void
.end method

.method public prepare(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V
    .locals 7

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent$1;-><init>(Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;->setAction(I)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->responseGroupPushInfo(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ResponsePushListener;)V

    :cond_1
    return-void
.end method

.method public prepareFolderToken(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->getContentTokenByGroupID(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/PrepareReceivingCommand;)V

    return-void
.end method

.method public renewalExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getContentsTokenByGroupID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getPublicFolderToken(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    :cond_2
    return-void
.end method

.method public resumeDownload(JLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resumeDownload(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;Landroid/os/Bundle;)V

    return-void
.end method

.method public resumeUpload(JLcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->resumeUpload(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;)V

    return-void
.end method

.method public searchSocial(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;Lcom/sec/android/gallery3d/eventshare/command/GetCommentInfoCommand;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->searchSocial(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public stop(JLcom/sec/android/gallery3d/eventshare/command/StopContentsUploadCommand;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->stop(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    return-void
.end method

.method public updateArticleMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->updateArticleMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;)V

    return-void
.end method

.method public updateComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;Lcom/sec/android/gallery3d/eventshare/command/UpdateCommentCommand;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->updateComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/UpdateCommentListener;)V

    return-void
.end method

.method public updateGroupMember(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->updateGroup(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V

    return-void
.end method

.method public updateStoryName(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->updateGroup(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V
    .locals 9
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

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest$Builder;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest$Builder;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    const-string/jumbo v6, "EventShareAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid fileList size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>()V

    const-string/jumbo v6, "file size error"

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorMessage(Ljava/lang/String;)V

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorCode(I)V

    invoke-virtual {p5, v0}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v5, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest$Builder;->addContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest$Builder;->addGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;->ONLYONE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest$Builder;->setPushType(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareAgent;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v6

    invoke-virtual {v6, v3, p5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->uploadContentsPublicMode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;)V

    goto :goto_0
.end method
