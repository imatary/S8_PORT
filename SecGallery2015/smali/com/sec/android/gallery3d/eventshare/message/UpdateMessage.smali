.class public Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;
.super Lcom/sec/android/gallery3d/eventshare/message/EventMessage;
.source "UpdateMessage.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_REQUEST_TYPE"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
