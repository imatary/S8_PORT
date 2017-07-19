.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg;
.super Ljava/lang/Object;
.source "XDMMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;,
        Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;
    }
.end annotation


# static fields
.field private static final syncMsgQueueObj:Ljava/lang/Object;

.field private static final syncUIMsgQueueObj:Ljava/lang/Object;


# instance fields
.field public msgItem:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg;->syncMsgQueueObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg;->syncUIMsgQueueObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg;->msgItem:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;

    return-void
.end method

.method public static xdmCreateAbortMessage(IZ)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAbortMsgParam;
    .locals 1

    const/4 v0, 0x0

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAbortMsgParam;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAbortMsgParam;-><init>()V

    iput p0, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAbortMsgParam;->abortCode:I

    iput-boolean p1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAbortMsgParam;->userReq:Z

    return-object v0
.end method

.method public static xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;-><init>()V

    iput-object p1, v5, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;->paramFree:Ljava/lang/Object;

    if-eqz p2, :cond_0

    iput-object p2, v5, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;->paramFree:Ljava/lang/Object;

    :cond_0
    sget-object v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg;->syncMsgQueueObj:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v6, Lcom/samsung/android/app/omcagent/dm/agent/XDMTask;->g_hDmTask:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/4 v6, 0x5

    if-lt v1, v6, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    :try_start_2
    iput p0, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;->type:I

    iput-object v5, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;

    sget-object v6, Lcom/samsung/android/app/omcagent/dm/agent/XDMTask;->g_hDmTask:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v6, Lcom/samsung/android/app/omcagent/dm/agent/XDMTask;->g_hDmTask:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_3
    :try_start_4
    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v8, "waiting for DM_TaskHandler create"

    invoke-virtual {v6, v8}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    sget-object v6, Lcom/samsung/android/app/omcagent/dm/agent/XDMTask;->g_hDmTask:Landroid/os/Handler;

    if-nez v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    move-object v3, v4

    :goto_3
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v6

    :catch_1
    move-exception v0

    :try_start_7
    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v8, "Can\'t send message"

    invoke-virtual {v6, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v6

    goto :goto_3
.end method

.method public static xdmSendUIMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-instance v5, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;

    invoke-direct {v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;-><init>()V

    iput-object p1, v5, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;->param:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;->paramFree:Ljava/lang/Object;

    if-eqz p2, :cond_0

    iput-object p2, v5, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;->paramFree:Ljava/lang/Object;

    :cond_0
    sget-object v7, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg;->syncUIMsgQueueObj:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v6, Lcom/samsung/android/app/omcagent/dm/agent/XDMUITask;->g_hDmUiTask:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/4 v6, 0x5

    if-lt v1, v6, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    :try_start_2
    iput p0, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;->type:I

    iput-object v5, v4, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgItem;->param:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMsg$XDMMsgParam;

    sget-object v6, Lcom/samsung/android/app/omcagent/dm/agent/XDMUITask;->g_hDmUiTask:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v6, Lcom/samsung/android/app/omcagent/dm/agent/XDMUITask;->g_hDmUiTask:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_3
    :try_start_4
    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v8, "waiting for hUITask create"

    invoke-virtual {v6, v8}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    sget-object v6, Lcom/samsung/android/app/omcagent/dm/agent/XDMUITask;->g_hDmUiTask:Landroid/os/Handler;

    if-nez v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    move-object v3, v4

    :goto_3
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v6

    :catch_1
    move-exception v0

    :try_start_7
    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v8, "Can\'t send UI message"

    invoke-virtual {v6, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v6

    goto :goto_3
.end method
