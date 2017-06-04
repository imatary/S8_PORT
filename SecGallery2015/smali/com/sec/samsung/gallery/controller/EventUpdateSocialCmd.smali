.class public Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "EventUpdateSocialCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/content/Context;

.field private mChannelId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private addComment([Ljava/lang/Object;I)V
    .locals 11

    add-int/lit8 v10, p2, 0x1

    aget-object v1, p1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 p2, v10, 0x1

    aget-object v4, p1, v10

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v10, p2, 0x1

    aget-object v5, p1, p2

    check-cast v5, Ljava/lang/String;

    add-int/lit8 p2, v10, 0x1

    aget-object v1, p1, v10

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-int/lit8 v10, p2, 0x1

    aget-object v8, p1, p2

    check-cast v8, Ljava/lang/String;

    add-int/lit8 p2, v10, 0x1

    aget-object v1, p1, v10

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddComment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mChannelId:I

    invoke-direct/range {v0 .. v9}, Lcom/sec/samsung/gallery/view/channelcomments/EventAddComment;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/EventAddComment;->run()V

    return-void
.end method

.method private addLike([Ljava/lang/Object;I)V
    .locals 8

    add-int/lit8 v7, p2, 0x1

    aget-object v1, p1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 p2, v7, 0x1

    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v7, p2, 0x1

    aget-object v5, p1, p2

    check-cast v5, Ljava/lang/String;

    add-int/lit8 p2, v7, 0x1

    aget-object v1, p1, v7

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mChannelId:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/EventAddLike;->run()V

    return-void
.end method

.method private deleteComment([Ljava/lang/Object;I)V
    .locals 7

    add-int/lit8 v6, p2, 0x1

    aget-object v1, p1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 p2, v6, 0x1

    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v6, p2, 0x1

    aget-object v1, p1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/EventDeleteComment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mChannelId:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/channelcomments/EventDeleteComment;-><init>(Landroid/content/Context;IILjava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/EventDeleteComment;->run()V

    return-void
.end method

.method private editComment([Ljava/lang/Object;I)V
    .locals 8

    add-int/lit8 v7, p2, 0x1

    aget-object v1, p1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 p2, v7, 0x1

    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v7, p2, 0x1

    aget-object v5, p1, p2

    check-cast v5, Ljava/lang/String;

    add-int/lit8 p2, v7, 0x1

    aget-object v1, p1, v7

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/EventEditComment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mChannelId:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/channelcomments/EventEditComment;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/EventEditComment;->run()V

    return-void
.end method

.method private refreshAll([Ljava/lang/Object;I)V
    .locals 5

    add-int/lit8 v1, p2, 0x1

    aget-object v0, p1, p2

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mActivity:Landroid/content/Context;

    iget v4, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mChannelId:I

    invoke-direct {v2, v3, v4, v0}, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/channelcomments/EventRefreshSocialInfo;->run()V

    return-void
.end method

.method private removeLike([Ljava/lang/Object;I)V
    .locals 7

    add-int/lit8 v6, p2, 0x1

    aget-object v1, p1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 p2, v6, 0x1

    aget-object v4, p1, v6

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v6, p2, 0x1

    aget-object v1, p1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/EventDeleteLike;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mChannelId:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/channelcomments/EventDeleteLike;-><init>(Landroid/content/Context;IILjava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelcomments/EventDeleteLike;->run()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    add-int/lit8 v2, v1, 0x1

    aget-object v4, v3, v1

    check-cast v4, Landroid/content/Context;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mActivity:Landroid/content/Context;

    add-int/lit8 v1, v2, 0x1

    aget-object v0, v3, v2

    check-cast v0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;

    add-int/lit8 v2, v1, 0x1

    aget-object v4, v3, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->mChannelId:I

    sget-object v4, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$1;->$SwitchMap$com$sec$samsung$gallery$controller$EventUpdateSocialCmd$CmdType:[I

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd$CmdType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->addComment([Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->editComment([Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->deleteComment([Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->addLike([Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->removeLike([Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/controller/EventUpdateSocialCmd;->refreshAll([Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
