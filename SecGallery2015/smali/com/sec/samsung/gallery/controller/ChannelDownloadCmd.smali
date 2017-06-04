.class public Lcom/sec/samsung/gallery/controller/ChannelDownloadCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ChannelDownloadCmd.java"


# instance fields
.field private mEventName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 9

    const/4 v8, 0x5

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v1, v7, v3

    check-cast v1, Landroid/content/Context;

    const/4 v3, 0x1

    aget-object v2, v7, v3

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v3, 0x3

    aget-object v3, v7, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v3, 0x4

    aget-object v6, v7, v3

    check-cast v6, Ljava/lang/String;

    array-length v3, v7

    if-le v3, v8, :cond_0

    aget-object v3, v7, v8

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ChannelDownloadCmd;->mEventName:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ChannelDownloadCmd;->mEventName:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/EventDownloadStart;->run()V

    return-void
.end method
