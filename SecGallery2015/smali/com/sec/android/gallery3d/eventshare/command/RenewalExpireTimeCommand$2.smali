.class Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;
.super Ljava/lang/Object;
.source "RenewalExpireTimeCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelExpireTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getExpiredTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v3}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    const-string/jumbo v4, "expiration_time"

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v5}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getExpiredTime()J

    move-result-wide v6

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelLongColumn(Landroid/content/Context;ILjava/lang/String;J)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    return-void
.end method
