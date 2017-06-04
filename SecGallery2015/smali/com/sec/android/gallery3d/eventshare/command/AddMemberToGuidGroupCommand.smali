.class public Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;
.super Ljava/lang/Object;
.source "AddMemberToGuidGroupCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddMemberToGuidGroup"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private addMember(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;)V
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->getDuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v4, v7}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;

    invoke-direct {v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;-><init>()V

    invoke-virtual {v6, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;->setMembers(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v6

    invoke-virtual {v6, v5, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->addGroupMembers(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public excute()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "SHARE_EVENT_UGCI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest$Builder;->setGuid(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest$Builder;

    move-result-object v2

    const-string/jumbo v3, "GA2"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest$Builder;->setType(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getGroupsByGuid(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;)V

    :cond_1
    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 3

    const-string/jumbo v0, "AddMemberToGuidGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetGroupsByGuidListener onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;)V
    .locals 11

    const-string/jumbo v8, "AddMemberToGuidGroup"

    const-string/jumbo v9, "AddGroupMembersListener onSuccess"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "add_member_to_guid_group"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->getDuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;->getGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;->getId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupsGuidResponse;->getGroups()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupUserResponse;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v10, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->mContext:Landroid/content/Context;

    invoke-static {v10, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    new-instance v6, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand$1;

    invoke-direct {v6, p0}, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;)V

    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    invoke-direct {p0, v1, v6}, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->addMember(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;)V

    goto :goto_0

    :cond_3
    return-void
.end method
