.class public Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;
.super Lcom/sec/android/gallery3d/eventshare/SharedEvent;
.source "HostSharedEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HostSharedEvent"


# instance fields
.field private mChangeListener:Lcom/sec/android/gallery3d/eventshare/SharedEvent$OnChangeListener;

.field private mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private mIsRunning:Z

.field private mPausedIntent:Landroid/content/Intent;

.field private final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mIsRunning:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventId:I

    iput p3, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriFileList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriContactList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/agent/ShareAgentProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    return-void
.end method

.method private changeState(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    return-void
.end method


# virtual methods
.method public addIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "HostSharedEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add info("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")+ intent + in event("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mPausedIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mPausedIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->READY_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setState(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mMemento:Lcom/sec/android/gallery3d/eventshare/Memorable;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-interface {v0, v1, p1}, Lcom/sec/android/gallery3d/eventshare/Memorable;->save(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->process(Landroid/content/Intent;)V

    const-string/jumbo v0, "HostSharedEvent"

    const-string/jumbo v1, "There has been already a pending intent."

    invoke-static {v0, v3, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->clear()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->destroy()V

    :cond_0
    return-void
.end method

.method public getCurrentRequest()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getRequest()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    return-object v0
.end method

.method public handle(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->process(Landroid/content/Intent;)V

    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataChange(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, -0x1

    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onDataChange("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "SHARE_EVENT_NAME"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "SHARE_EVENT_NAME"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "# EventName : ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventName:Ljava/lang/String;

    :cond_0
    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "            => ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v8, "SHARE_EVENT_FILE_URIS"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "SHARE_EVENT_FILE_URIS"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string/jumbo v8, "HostSharedEvent"

    const-string/jumbo v9, "# File List"

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    iget-object v9, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v9, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriFileList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v8, "SHARE_EVENT_FILE_LOCAL_PATHS"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "SHARE_EVENT_FILE_LOCAL_PATHS"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v8, "HostSharedEvent"

    const-string/jumbo v9, "# path List"

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v9, "HostSharedEvent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v8, "SHARE_EVENT_CONTACT_URIS"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "SHARE_EVENT_CONTACT_URIS"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v8, "HostSharedEvent"

    const-string/jumbo v9, "# Contact list"

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriContactList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_1

    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    iget-object v9, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriContactList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v9, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriContactList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v8, "SHARE_EVENT_CONTACT"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "SHARE_EVENT_CONTACT"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "# Contant : ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mContant:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    iput-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mContant:Ljava/lang/String;

    :cond_6
    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "            => ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mContant:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v8, "SHARE_EVENT_SHARE_ID"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v8, "SHARE_EVENT_SHARE_ID"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "# ShareID : ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mShareID:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v7, v12, :cond_8

    int-to-long v8, v7

    iput-wide v8, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mShareID:J

    :cond_8
    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "            => ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mShareID:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v8, "SHARE_EVENT_UGCI"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "SHARE_EVENT_UGCI"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "# GroupID : ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUgci:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    iput-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUgci:Ljava/lang/String;

    :cond_a
    const-string/jumbo v8, "HostSharedEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "            => ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUgci:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFinish(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->changeState(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->isStable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mChangeListener:Lcom/sec/android/gallery3d/eventshare/SharedEvent$OnChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent$OnChangeListener;->onDequeue(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->setUgci(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public pause(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mIsRunning:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mIsRunning:Z

    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onWait()V

    :cond_1
    :goto_1
    const-string/jumbo v0, "HostSharedEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pause called in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFail()V

    goto :goto_1
.end method

.method public restore(Lcom/sec/android/gallery3d/eventshare/EventShareData;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string/jumbo v4, "HostSharedEvent"

    const-string/jumbo v5, "Event Share Data"

    invoke-static {v4, v8, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventName:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->ugci:Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUgci:Ljava/lang/String;

    iget v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->shareId:I

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mShareID:J

    const-string/jumbo v4, "HostSharedEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event Name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", UGCI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUgci:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Share ID :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mShareID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->contactList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->contactList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriContactList:Ljava/util/ArrayList;

    const-string/jumbo v4, "HostSharedEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Contact List : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriContactList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    iget-object v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->fileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->fileList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriFileList:Ljava/util/ArrayList;

    const-string/jumbo v4, "HostSharedEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File List : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriFileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    iget-object v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->localPathFileList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->localPathFileList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    const-string/jumbo v4, "HostSharedEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File path List : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    const-string/jumbo v4, "HostIdleState"

    iget-object v5, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->changeState(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    :goto_0
    const-string/jumbo v4, "HostSharedEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget v5, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/eventshare/EventState;->setRequest(I)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/EventState$State;->values()[Lcom/sec/android/gallery3d/eventshare/EventState$State;

    move-result-object v5

    iget v6, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/eventshare/EventState;->setState(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    const-string/jumbo v4, "HostSharedEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Request ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Request;->TYPE_NAME:[Ljava/lang/String;

    iget v7, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Request State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$RequestState;->TYPE_NAME:[Ljava/lang/String;

    iget v7, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    iget v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventState$State;->RUNNING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/EventState$State;->ordinal()I

    move-result v5

    if-eq v4, v5, :cond_3

    iget v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventState$State;->WAITING_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/EventState$State;->ordinal()I

    move-result v5

    if-eq v4, v5, :cond_3

    iget v4, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventState$State;->READY_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/EventState$State;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_a

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/eventshare/EventState;->setState(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriContactList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriContactList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "GuestIdleState"

    iget-object v5, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/state/GuestIdleState;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/eventshare/state/GuestIdleState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->changeState(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "SharedState"

    iget-object v5, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/state/SharedState;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->changeState(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "HostSharedEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "eventShareData.state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", eventShareData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "invalid valide state"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUriFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mLocalPathFileList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    new-instance v4, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventName(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventContacts(Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v2}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventExtraInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventFilePaths(Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventFileUris(Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    iget-wide v6, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mShareID:J

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventShareID(J)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUgci:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventUgci(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventContact(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventDuid(Ljava/lang/String;)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventSynctime(J)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->setEventMobileData(Z)Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;

    move-result-object v4

    iget v5, p1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/eventshare/message/RequestMessage;->send(I)V

    const-string/jumbo v4, "HostSharedEvent"

    const-string/jumbo v5, "Send RequestMessage!"

    invoke-static {v4, v8, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    :cond_a
    const-string/jumbo v4, "HostSharedEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event State Info > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/EventState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public resume(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onWakeUp()V

    :cond_0
    :goto_0
    const-string/jumbo v0, "HostSharedEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resume called in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mPausedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/EventState;->setState(Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    :cond_2
    const-string/jumbo v0, "HostSharedEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove Intent event("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "HostSharedEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ": intent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mPausedIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mPausedIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/message/EventMessage;->send()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mPausedIntent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setListener(Lcom/sec/android/gallery3d/eventshare/SharedEvent$OnChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mChangeListener:Lcom/sec/android/gallery3d/eventshare/SharedEvent$OnChangeListener;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventType:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->setUpdatedTime(J)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/state/HostIdleState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->changeState(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/state/GuestIdleState;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/state/GuestIdleState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->changeState(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stop()V
    .locals 2

    const-string/jumbo v0, "HostSharedEvent"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Event (ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ),(NAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ),(TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$EventType;->TYPE_NAME:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ),(GROUPID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mUgci:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ),(SHAREID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mShareID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\n>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/EventState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, " ),(isRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ),(mPausedIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/HostSharedEvent;->mPausedIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
