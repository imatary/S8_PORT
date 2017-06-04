.class public Lcom/sec/samsung/gallery/controller/EventAddContentCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "EventAddContentCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 9

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v7, v8

    check-cast v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v1, v7, v8

    check-cast v1, Landroid/content/Context;

    const/4 v8, 0x1

    aget-object v8, v7, v8

    check-cast v8, [Landroid/net/Uri;

    move-object v2, v8

    check-cast v2, [Landroid/net/Uri;

    const/4 v8, 0x2

    aget-object v8, v7, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v8, 0x3

    aget-object v8, v7, v8

    check-cast v8, [Ljava/lang/String;

    move-object v4, v8

    check-cast v4, [Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v8, v7, v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v8, 0x5

    aget-object v6, v7, v8

    check-cast v6, Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;-><init>(Landroid/content/Context;[Landroid/net/Uri;I[Ljava/lang/String;ZLjava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->run()V

    return-void
.end method
