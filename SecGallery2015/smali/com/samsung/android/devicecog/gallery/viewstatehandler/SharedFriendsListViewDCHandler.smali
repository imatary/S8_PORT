.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
.source "SharedFriendsListViewDCHandler.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    return-void
.end method

.method private handleDeleteGroupPopup()V
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_DELETE_GROUP_POPUP:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private handleLeaveGroupPopup()V
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_LEAVE_GROUP_POPUP:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private handleMembersSelectedView(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :sswitch_0
    const-string/jumbo v9, "selectAll"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "recipient"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v5, v7

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v4, v2, v6

    aput-object v3, v2, v7

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x664824fb -> :sswitch_0
        0x30e17219 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
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

    const-string/jumbo v0, "SharedFriendsDCHandler"

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
    const-string/jumbo v1, "MembersEmptySelectedView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "MembersSelectedView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "LeaveGroupPopUp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "DeleteGroupPopUp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "AddStoryMember"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;->enterSelectedView(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;->handleMembersSelectedView(Ljava/util/List;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;->handleLeaveGroupPopup()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;->handleDeleteGroupPopup()V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ADD_STORY_MEMBER:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/SharedFriendsListViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6cc3df52 -> :sswitch_4
        -0x41467648 -> :sswitch_3
        -0x159e1c87 -> :sswitch_1
        0x35d3e784 -> :sswitch_2
        0x4052f9d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
