.class public Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;
.super Ljava/lang/Object;
.source "GetUploadedCountCommand.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# instance fields
.field private final mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

.field private final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUploadedFileCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUploadTotalCount()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUploadedCountCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyUpdateUploadedCount(III)V

    return-void
.end method
