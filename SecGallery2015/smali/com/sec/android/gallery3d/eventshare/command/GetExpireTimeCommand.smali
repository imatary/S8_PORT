.class public Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;
.super Ljava/lang/Object;
.source "GetExpireTimeCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetExpireTimeCommand"


# instance fields
.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    return-object v0
.end method


# virtual methods
.method public excute()V
    .locals 4

    const-string/jumbo v0, "GetExpireTimeCommand"

    const-string/jumbo v1, "excute"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->getExpireTime(Ljava/lang/String;Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 2

    const-string/jumbo v0, "GetExpireTimeCommand"

    const-string/jumbo v1, "onError : )"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getExpiryTime()J

    move-result-wide v0

    const-string/jumbo v2, "GetExpireTimeCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSuccess : time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setExpiredTime(J)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand$2;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand$2;-><init>(Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
