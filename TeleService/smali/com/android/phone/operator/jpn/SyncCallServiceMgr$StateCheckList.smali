.class public Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;
.super Ljava/lang/Object;
.source "SyncCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateCheckList"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public callState:I

.field public index:J

.field public isGroupCall:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IJZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->address:Ljava/lang/String;

    iput p2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    iput-wide p3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->index:J

    iput-boolean p5, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->isGroupCall:Z

    return-void
.end method
