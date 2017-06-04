.class public Lcom/sec/android/gallery3d/eventshare/command/DeleteBrokenGroupCommand;
.super Ljava/lang/Object;
.source "DeleteBrokenGroupCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteBrokenGroupCommand"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUgci:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteBrokenGroupCommand;->mUgci:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteBrokenGroupCommand;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 3

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteBrokenGroupCommand;->mUgci:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteBrokenGroupCommand;->mUgci:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;->setUserData(Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteBrokenGroupCommand;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->deleteGroup(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupListener;)V

    :cond_1
    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 4

    const-string/jumbo v0, "DeleteBrokenGroupCommand"

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

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;)V
    .locals 7

    const-string/jumbo v2, "DeleteBrokenGroupCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSuccess : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;->getReqId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;->getUserData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteBrokenGroupCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v1

    :try_start_0
    const-string/jumbo v3, "event_share_operation"

    const-string/jumbo v4, "event_ugci= ?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;->getUserData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeleteBrokenGroupCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWakeUp deleteGroup is fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
