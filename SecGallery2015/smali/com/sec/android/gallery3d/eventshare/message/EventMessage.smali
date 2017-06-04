.class public Lcom/sec/android/gallery3d/eventshare/message/EventMessage;
.super Ljava/lang/Object;
.source "EventMessage.java"


# instance fields
.field private final mEventId:I

.field private final mHandler:Landroid/os/Handler;

.field final mServiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mEventId:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mServiceIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_ID"

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mEventId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mEventId:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mServiceIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public send()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mServiceIntent:Landroid/content/Intent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
