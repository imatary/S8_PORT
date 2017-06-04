.class public Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;
.super Ljava/lang/Object;
.source "AddMemberCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "AddMemberCommand"


# instance fields
.field final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private final mIntent:Landroid/content/Intent;

.field private final mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

.field final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    return-void
.end method


# virtual methods
.method addMessage()V
    .locals 3

    const-string/jumbo v1, "AddMemberCommand"

    const-string/jumbo v2, "addMessage"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    invoke-interface {v1, v0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public excute()V
    .locals 4

    const-string/jumbo v1, "AddMemberCommand"

    const-string/jumbo v2, "excute"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-string/jumbo v2, "SHARE_EVENT_CONTACT_URIS"

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onDataChange(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->addMessage()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContactList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v0, v2, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->addMember(Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->onCancel()V

    goto :goto_0
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 4

    const-string/jumbo v0, "AddMemberCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;)V
    .locals 11

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "GRMA"

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v5, "AddMemberCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSuccess : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, ""

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContactList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNumberWithUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a001e

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_2
    :goto_1
    new-instance v5, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v5, v6}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->excute()V

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02aa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a046e

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1
.end method
