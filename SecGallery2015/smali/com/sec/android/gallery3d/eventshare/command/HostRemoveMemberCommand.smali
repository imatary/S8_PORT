.class public Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;
.source "HostRemoveMemberCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HostRemoveMemberCommand"


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand$2;-><init>(Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->superExcute()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->changeStateToIdle()V

    return-void
.end method

.method private changeStateToIdle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand$3;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand$3;-><init>(Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getNextOwner()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget v3, v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-object v3, v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method private superExcute()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->excute()V

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->getNextOwner()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->superExcute()V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->setOwnerId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;

    move-result-object v2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    invoke-interface {v3, v2, v0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->updateGroupMember(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V

    goto :goto_0
.end method
