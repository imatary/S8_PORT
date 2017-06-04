.class public Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;
.super Ljava/lang/Object;
.source "PrepareValidItemCommand.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;
    }
.end annotation


# static fields
.field private static final GALLERY_PROVIDER:Ljava/lang/String; = "com.sec.android.gallery3d.provider"

.field private static final TAG:Ljava/lang/String; = "PrepareValidItemCommand"

.field private static final TIME_OUT_IGNORED:I = -0x1


# instance fields
.field private final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field private mIntent:Landroid/content/Intent;

.field private final mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    return-object v0
.end method

.method private updateData()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_UGCI"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-string/jumbo v2, "SHARE_EVENT_UGCI"

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onDataChange(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-string/jumbo v2, "SHARE_EVENT_CONTACT_URIS"

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onDataChange(Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-string/jumbo v2, "SHARE_EVENT_FILE_URIS"

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onDataChange(Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-string/jumbo v2, "SHARE_EVENT_FILE_LOCAL_PATHS"

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onDataChange(Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUploadTotalCount(I)V

    goto :goto_0
.end method


# virtual methods
.method public excute()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->updateData()V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;-><init>(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$1;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setCacheTask(Landroid/os/AsyncTask;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(IIII)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    return-void
.end method
