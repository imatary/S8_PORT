.class public Lcom/gdg/recordinglib/ICallback$GCMetadata;
.super Ljava/lang/Object;
.source "ICallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gdg/recordinglib/ICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCMetadata"
.end annotation


# instance fields
.field public bitrate:I

.field public bitrateMode:I

.field public displayFrameRate:I

.field public displayId:I

.field public dstFileName:Ljava/lang/String;

.field public dutyFreeSpace:F

.field public errCode:I

.field public forceYVU:Z

.field public keyframeInterval:I

.field public pkgName:Ljava/lang/String;

.field public recDisplay:Z

.field public recMic:Z

.field public recScreen:Z

.field public recSystemAudio:Z

.field public screenSize:Ljava/lang/String;

.field public showDeviceInfo:Z

.field public timeLimit:I

.field public verbose:Z

.field public waterMark:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
