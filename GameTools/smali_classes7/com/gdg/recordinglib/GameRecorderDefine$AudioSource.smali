.class public Lcom/gdg/recordinglib/GameRecorderDefine$AudioSource;
.super Ljava/lang/Object;
.source "GameRecorderDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gdg/recordinglib/GameRecorderDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioSource"
.end annotation


# static fields
.field public static final MIC:I = 0x1

.field public static final SEC_BARGEIN_DRIVING:I

.field public static final SYSTEM:I

.field public static final VOICE_RECOGNITION:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v0

    sput v0, Lcom/gdg/recordinglib/GameRecorderDefine$AudioSource;->SEC_BARGEIN_DRIVING:I

    const/16 v0, 0xc

    invoke-static {v0}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v0

    sput v0, Lcom/gdg/recordinglib/GameRecorderDefine$AudioSource;->SYSTEM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
