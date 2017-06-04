.class Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;
.super Ljava/lang/Object;
.source "HostAddMemberCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v3, v3, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v4, v4, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getExpiredTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventDBInterface;->updateItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    move v7, v11

    :goto_0
    const-string/jumbo v1, "HostAddMemberCommand"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateChannel channel is success: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v7, :cond_2

    move v0, v11

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    const-string/jumbo v2, "is_shared"

    invoke-virtual {v6, v0, v1, v2, v11}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v11

    :goto_2
    or-int/2addr v7, v0

    const-string/jumbo v1, "HostAddMemberCommand"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChannelSharing channel is success: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v7, :cond_4

    move v0, v11

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    const-string/jumbo v2, "owner"

    invoke-virtual {v6, v0, v1, v2, v11}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v11

    :goto_4
    or-int/2addr v7, v0

    const-string/jumbo v0, "HostAddMemberCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChannelOwner channel is success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v7, :cond_6

    :goto_5
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContactList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getNumberWithUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1
    move v7, v12

    goto/16 :goto_0

    :cond_2
    move v0, v12

    goto/16 :goto_1

    :cond_3
    move v0, v12

    goto/16 :goto_2

    :cond_4
    move v0, v12

    goto/16 :goto_3

    :cond_5
    move v0, v12

    goto :goto_4

    :cond_6
    move v11, v12

    goto :goto_5

    :cond_7
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->excute()V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->createChannelContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_8
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0, v1, v13}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->notifyState(Lcom/sec/android/gallery3d/eventshare/SharedEvent;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/state/SharedState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->COMPLETE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/HostAddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    return-void
.end method
