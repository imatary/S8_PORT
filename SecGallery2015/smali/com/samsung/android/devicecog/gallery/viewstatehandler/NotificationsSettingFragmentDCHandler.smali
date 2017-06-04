.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/NotificationsSettingFragmentDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;
.source "NotificationsSettingFragmentDCHandler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/Observer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method public getScreenStateId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Notifications"

    return-object v0
.end method

.method public startCommand(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "NotificationsFragDCH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateId is wrong, stateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateId is wrong, stateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v1, "StoryInvitationNotificationOn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "StoryInvitationNotificationOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "InvitedMembersNotificationOn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "InvitedMembersNotificationOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "NewPostNotificationOn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "NewPostNotificationOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "NewCommentNotificationOn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "NewCommentNotificationOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "NewLikeNotificationOn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "NewLikeNotificationOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_INVITATIONS_CONTROL:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/NotificationsSettingFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_INVITED_MEMBERS_CONTROL:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/NotificationsSettingFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_NEW_POSTS_CONTROL:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/NotificationsSettingFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_NEW_COMMENTS_CONTROL:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/NotificationsSettingFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_NEW_LIKES_CONTROL:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/NotificationsSettingFragmentDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f1e03aa -> :sswitch_1
        -0x3681159a -> :sswitch_3
        -0x111b623b -> :sswitch_7
        -0xc9186bf -> :sswitch_8
        -0xa0429f8 -> :sswitch_2
        -0x20939e8 -> :sswitch_0
        -0x8d4537 -> :sswitch_6
        0x9507224 -> :sswitch_5
        0x3a1b5e8a -> :sswitch_4
        0x7a60ae4d -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
