.class public Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;
.super Ljava/lang/Object;
.source "RenewalExpireTimeCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "RenewalExpireTimeCommand"


# instance fields
.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

.field private mSmsRecepients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsdata:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    return-object v0
.end method


# virtual methods
.method public excute()V
    .locals 11

    const/4 v10, 0x1

    const-string/jumbo v6, "RenewalExpireTimeCommand"

    const/4 v7, 0x2

    const-string/jumbo v8, "excute"

    invoke-static {v6, v7, v8}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSmsdata:Landroid/os/Bundle;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSmsRecepients:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContactList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNumberWithUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMSISDN(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSmsRecepients:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSmsdata:Landroid/os/Bundle;

    const-string/jumbo v8, "extra_recipients"

    iget-object v9, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSmsRecepients:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v6, v10, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->renewalExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)V

    :goto_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    return-void

    :cond_3
    new-array v1, v10, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->renewalExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)V

    goto :goto_2
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 3

    const-string/jumbo v0, "RenewalExpireTimeCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getUrls()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getContentTokenExpiryTime()J

    move-result-wide v0

    const-string/jumbo v6, "RenewalExpireTimeCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSuccess : ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getFolderToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setExpiredTime(J)V

    if-eqz v5, :cond_0

    aget-object v6, v5, v12

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    aget-object v7, v5, v12

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setWebUrl(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    aget-object v7, v5, v12

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->getExpiredTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setExpiredTime(J)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSmsRecepients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0496

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string/jumbo v6, "yyyy.MM.dd"

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getExpiredTime()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSmsdata:Landroid/os/Bundle;

    const-string/jumbo v7, "extra_message_body"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a03c8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a02bd

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v12

    iget-object v12, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getWebUrl()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    const/4 v12, 0x2

    aput-object v2, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "extra_token"

    invoke-virtual {v3, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSmsdata:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;

    invoke-direct {v7, p0}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;-><init>(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
