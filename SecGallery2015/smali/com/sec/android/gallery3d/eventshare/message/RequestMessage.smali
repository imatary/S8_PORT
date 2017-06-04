.class public Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
.super Lcom/sec/android/gallery3d/eventshare/message/EventMessage;
.source "RequestMessage.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    return-void
.end method


# virtual methods
.method public send(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_REQUEST_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->send()V

    return-void
.end method

.method public setEventContact(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_CONTACT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setEventContacts(Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_CONTACT_URIS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public setEventDuid(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_DUID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setEventExtraInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_EXTRA_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setEventFilePaths(Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_FILE_LOCAL_PATHS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public setEventFileUris(Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_FILE_URIS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public setEventMobileData(Z)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_USE_MOBILE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setEventName(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setEventShareID(J)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public setEventSynctime(J)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_SYNC_TIME"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public setEventUgci(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->mServiceIntent:Landroid/content/Intent;

    const-string/jumbo v1, "SHARE_EVENT_UGCI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
