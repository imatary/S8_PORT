.class public Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "EventUpdateGroupCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 12

    const/4 v11, 0x3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v5, v9

    check-cast v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v0, v5, v9

    check-cast v0, Landroid/content/Context;

    const/4 v9, 0x1

    aget-object v2, v5, v9

    check-cast v2, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;

    const/4 v9, 0x2

    aget-object v9, v5, v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v9, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$1;->$SwitchMap$com$sec$samsung$gallery$controller$EventUpdateGroupCmd$CmdType:[I

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/controller/EventUpdateGroupCmd$CmdType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    aget-object v6, v5, v11

    check-cast v6, Ljava/lang/String;

    new-instance v8, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;

    invoke-direct {v8, v0, v1, v6}, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryName;->run()V

    goto :goto_0

    :pswitch_1
    aget-object v3, v5, v11

    check-cast v3, Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v4, v5, v9

    check-cast v4, Landroid/graphics/RectF;

    new-instance v7, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;

    invoke-direct {v7, v0, v1, v3, v4}, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/channelphotoview/EventUpdateStoryCover;->run()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
