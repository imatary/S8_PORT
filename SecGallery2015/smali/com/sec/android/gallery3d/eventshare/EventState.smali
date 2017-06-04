.class public abstract Lcom/sec/android/gallery3d/eventshare/EventState;
.super Ljava/lang/Object;
.source "EventState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/EventState$OnChangeListener;,
        Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;,
        Lcom/sec/android/gallery3d/eventshare/EventState$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventState"


# instance fields
.field private mCurrentRequest:I

.field private final mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

.field private mPreviousRequest:I

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningState:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

.field protected final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

.field private mState:Lcom/sec/android/gallery3d/eventshare/EventState$State;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mCurrentRequest:I

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mPreviousRequest:I

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mState:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->IDLE:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mRunningState:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mRequests:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getMemento()Lcom/sec/android/gallery3d/eventshare/Memorable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

    return-void
.end method

.method private isReady()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mState:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->READY_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "EventState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mState:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/EventState$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRunning()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mState:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->RUNNING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "EventState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mState:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/EventState$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract contains(I)Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPreviousRequest()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mPreviousRequest:I

    return v0
.end method

.method public getRequest()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mCurrentRequest:I

    return v0
.end method

.method protected getRequest(Landroid/content/Intent;)I
    .locals 2

    const-string/jumbo v0, "SHARE_EVENT_REQUEST_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRunningType()Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mRunningState:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    return-object v0
.end method

.method public getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    return-object v0
.end method

.method public getState()Lcom/sec/android/gallery3d/eventshare/EventState$State;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mState:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    return-object v0
.end method

.method public abstract isCanceled()Z
.end method

.method protected abstract isInterruptCommand(I)Z
.end method

.method public abstract isStable()Z
.end method

.method protected abstract isUpdateCommand(I)Z
.end method

.method protected isValidRequest(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCancel()V
.end method

.method public abstract onFail()V
.end method

.method public onFinish(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V
    .locals 4

    const-string/jumbo v1, "EventState"

    const/4 v2, 0x3

    const-string/jumbo v3, "onFinish"

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->FAILED_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRequest(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setState(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/sec/android/gallery3d/eventshare/Memorable;->save(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "EventState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pop : intent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->send()V

    :cond_2
    return-void
.end method

.method protected abstract onStart(Landroid/content/Intent;)V
.end method

.method protected abstract onUpdate(Landroid/content/Intent;)V
.end method

.method public onWait()V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mCurrentRequest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/PauseCommand;->excute()V

    :cond_0
    return-void
.end method

.method public onWakeUp()V
    .locals 5

    const/16 v4, 0x64

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mState:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->checkValidConnetion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getWaitingIntentsFromRecover(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->send()V

    :cond_1
    return-void
.end method

.method public process(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getRequest(Landroid/content/Intent;)I

    move-result v0

    const-string/jumbo v1, "EventState"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "process request : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Request;->TYPE_NAME:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->isInterruptCommand(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "EventState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "It was activabted in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "EventState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EventState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Request;->TYPE_NAME:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->isValidRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    const-string/jumbo v1, "EventState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "push : intent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->isUpdateCommand(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->onUpdate(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->isInterruptCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "EventState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "It was activabted in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "EventState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EventState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Request;->TYPE_NAME:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->isValidRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    const-string/jumbo v1, "EventState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "push : intent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRequest(I)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    :cond_4
    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->UPLOADING:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    :cond_5
    :goto_1
    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->RUNNING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setState(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

    invoke-interface {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/Memorable;->save(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->onStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;->DOWNLOADING:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "EventState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Any request were not satisfied in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "EventState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EventState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Request;->TYPE_NAME:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setRequest(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mCurrentRequest:I

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mPreviousRequest:I

    iput p1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mCurrentRequest:I

    return-void
.end method

.method public setRunningType(Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mRunningState:Lcom/sec/android/gallery3d/eventshare/EventState$RunningType;

    return-void
.end method

.method public setState(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/EventState;->mState:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State (ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ),(NAME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ),(REQUEST: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Request;->TYPE_NAME:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getRequest()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
