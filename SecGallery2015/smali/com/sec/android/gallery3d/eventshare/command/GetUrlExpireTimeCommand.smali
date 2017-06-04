.class public Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;
.super Ljava/lang/Object;
.source "GetUrlExpireTimeCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetUrlExpireTimeCommand"


# instance fields
.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private final mIntent:Landroid/content/Intent;

.field private mList:[Ljava/lang/String;

.field private final mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

.field private final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

.field private mSmsdata:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    return-object v0
.end method


# virtual methods
.method public excute()V
    .locals 11

    const/4 v10, 0x1

    const-string/jumbo v7, "GetUrlExpireTimeCommand"

    const-string/jumbo v8, "excute"

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSmsdata:Landroid/os/Bundle;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mIntent:Landroid/content/Intent;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContactList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNumberByNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSmsdata:Landroid/os/Bundle;

    const-string/jumbo v9, "extra_recipients"

    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v8, "SHARE_EVENT_CONTACT_URIS"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v8, "SHARE_EVENT_CONTACT_URIS"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v7, "+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNumberByNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSmsdata:Landroid/os/Bundle;

    const-string/jumbo v8, "extra_recipients"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v10, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mList:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mList:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mList:[Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mList:[Ljava/lang/String;

    invoke-interface {v7, v8, v9, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->getUrlExpireTime(Ljava/lang/String;[Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)V

    :cond_6
    iget-object v7, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    goto :goto_1
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 2

    const-string/jumbo v0, "GetUrlExpireTimeCommand"

    const-string/jumbo v1, "onError : )"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 14

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getUrls()[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    move-result-object v10

    const-string/jumbo v0, "GetUrlExpireTimeCommand"

    const-string/jumbo v1, "onSuccess "

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_4

    const/4 v0, 0x0

    aget-object v0, v10, v0

    if-eqz v0, :cond_4

    array-length v12, v10

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v12, :cond_1

    aget-object v8, v10, v11

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string/jumbo v0, "GetUrlExpireTimeCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getExpiredTime : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->getExpiredTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "expire_time"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->getExpiredTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelContactLongColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v1, 0x0

    aget-object v1, v10, v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setWebUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v1, 0x0

    aget-object v1, v10, v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->getExpiredTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setExpiredTime(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    if-nez v9, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0496

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_3
    const-string/jumbo v0, "yyyy.MM.dd"

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getExpiredTime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSmsdata:Landroid/os/Bundle;

    const-string/jumbo v1, "extra_message_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a03c8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a02bd

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getWebUrl()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v6, v11, v12

    invoke-virtual {v4, v5, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sec/android/gallery3d/eventshare/utils/SmsSendService;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "extra_token"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSmsdata:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$2;-><init>(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
