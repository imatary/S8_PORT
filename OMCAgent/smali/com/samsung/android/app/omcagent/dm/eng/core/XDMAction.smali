.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAction;
.super Ljava/lang/Object;
.source "XDMAction.java"


# instance fields
.field public CmdID:I

.field public MsgID:I

.field public sourceList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public szCmdName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAction;->sourceList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public xdmCreateAction(Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAction;->szCmdName:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAction;->sourceList:Ljava/util/LinkedList;

    :cond_0
    return-void
.end method

.method public xdmFindAction(IILjava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAction;
    .locals 6

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAction;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAction;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wsFindAction actionList size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    :goto_0
    if-ge v1, v2, :cond_0

    if-gtz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    iget v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAction;->MsgID:I

    if-ne v3, p1, :cond_3

    iget v3, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAction;->CmdID:I

    if-eq v3, p2, :cond_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
