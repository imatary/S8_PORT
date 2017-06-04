.class public Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;
.super Ljava/lang/Object;
.source "EventAddStart.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventAddStart"


# instance fields
.field private final mActivity:Landroid/content/Context;

.field private final mChanneId:I

.field private final mLocalPathFileContent:[Ljava/lang/String;

.field private final mSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrifilecontent:[Landroid/net/Uri;

.field private final mUseMobileData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/net/Uri;I[Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/net/Uri;",
            "I[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mActivity:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mUrifilecontent:[Landroid/net/Uri;

    iput p3, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mChanneId:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mLocalPathFileContent:[Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mUseMobileData:Z

    iput-object p6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mSmsList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mChanneId:I

    const-string/jumbo v6, "ugci"

    invoke-static {v1, v2, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "EventAddStart"

    const-string/jumbo v2, "group id is not normal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    move-object v3, v9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mUrifilecontent:[Landroid/net/Uri;

    array-length v1, v1

    if-ge v8, v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mUrifilecontent:[Landroid/net/Uri;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mLocalPathFileContent:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v5, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mActivity:Landroid/content/Context;

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mChanneId:I

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mUseMobileData:Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/EventAddStart;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->addContent(Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    goto :goto_0
.end method
