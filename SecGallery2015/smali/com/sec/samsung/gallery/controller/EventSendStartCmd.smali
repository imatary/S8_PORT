.class public Lcom/sec/samsung/gallery/controller/EventSendStartCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "EventSendStartCmd.java"

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
    .locals 12

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v8, v9

    check-cast v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v1, v8, v9

    check-cast v1, Landroid/content/Context;

    const/4 v9, 0x1

    aget-object v9, v8, v9

    check-cast v9, [Landroid/net/Uri;

    move-object v2, v9

    check-cast v2, [Landroid/net/Uri;

    const/4 v9, 0x2

    aget-object v9, v8, v9

    check-cast v9, [Landroid/net/Uri;

    move-object v3, v9

    check-cast v3, [Landroid/net/Uri;

    const/4 v9, 0x3

    aget-object v4, v8, v9

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v9, v8, v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x5

    aget-object v9, v8, v9

    check-cast v9, [Ljava/lang/String;

    move-object v6, v9

    check-cast v6, [Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v9, v8, v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;-><init>(Landroid/content/Context;[Landroid/net/Uri;[Landroid/net/Uri;Ljava/lang/String;I[Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/EventSendStart;->run()V

    const-string/jumbo v9, "EventShareCmd"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startSendChannel payload : channelID [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
