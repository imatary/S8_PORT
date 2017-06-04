.class public Lcom/sec/samsung/gallery/controller/EventAddMembersCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "EventAddMembersCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final TAG:Ljava/lang/String; = "EventShareCmd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v4, v6

    check-cast v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v0, v4, v6

    check-cast v0, Landroid/content/Context;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    check-cast v6, [Landroid/net/Uri;

    move-object v5, v6

    check-cast v5, [Landroid/net/Uri;

    const/4 v6, 0x2

    aget-object v2, v4, v6

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;

    invoke-direct {v3, v0, v5, v2, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;-><init>(Landroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddMembers;->run()V

    const-string/jumbo v6, "EventShareCmd"

    const-string/jumbo v7, "EventAddFriendCmd payload : "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
