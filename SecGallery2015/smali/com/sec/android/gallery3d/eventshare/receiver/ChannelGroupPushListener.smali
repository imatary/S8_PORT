.class public Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushListener;
.super Ljava/lang/Object;
.source "ChannelGroupPushListener.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelGroupPushListener"


# instance fields
.field private final mReader:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushListener;->mReader:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 4

    const-string/jumbo v0, "ChannelGroupPushListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getServerErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivePushMessage(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;

    const-string/jumbo v2, "ChannelGroupPushListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "message :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getPushType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushListener;->mReader:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->getCodeReaderMap()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushListener;->mReader:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->getShowPermission()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushListener;->mReader:Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;->getShowPermission()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$CodeReader;

    invoke-interface {v2, v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$CodeReader;->read(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;)V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getPushType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;->getPushType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$CodeReader;

    invoke-interface {v2, v1}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader$CodeReader;->read(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GroupPushMessage;)V

    goto :goto_0

    :cond_2
    return-void
.end method
