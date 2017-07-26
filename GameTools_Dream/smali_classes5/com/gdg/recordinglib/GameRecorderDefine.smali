.class public Lcom/gdg/recordinglib/GameRecorderDefine;
.super Ljava/lang/Object;
.source "GameRecorderDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gdg/recordinglib/GameRecorderDefine$AudioSource;,
        Lcom/gdg/recordinglib/GameRecorderDefine$AudioOption;
    }
.end annotation


# static fields
.field public static AUDIO_BUFFER_SIZE:I

.field public static AUDIO_READ_THREAD_SLEEP_TIME:I

.field public static AUDIO_READ_THREAD_WAIT_CNT:I

.field public static AUDIO_READ_THREAD_WAIT_TIME:I

.field public static CIRCULAR_BUFFERING_TIME:I

.field public static CODEC_INPUT_WAIT_CNT:I

.field public static CODEC_INPUT_WAIT_TIME:I

.field public static FRAME_RATE:I

.field public static JITTER_BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x3c

    const/16 v2, 0x14

    const/4 v1, 0x5

    sput v3, Lcom/gdg/recordinglib/GameRecorderDefine;->FRAME_RATE:I

    const/16 v0, 0x780

    sput v0, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_BUFFER_SIZE:I

    sput v3, Lcom/gdg/recordinglib/GameRecorderDefine;->JITTER_BUFFER_SIZE:I

    const/16 v0, 0x7d0

    sput v0, Lcom/gdg/recordinglib/GameRecorderDefine;->CIRCULAR_BUFFERING_TIME:I

    const/16 v0, 0xa

    sput v0, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_WAIT_TIME:I

    sput v2, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_WAIT_CNT:I

    sput v1, Lcom/gdg/recordinglib/GameRecorderDefine;->AUDIO_READ_THREAD_SLEEP_TIME:I

    sput v1, Lcom/gdg/recordinglib/GameRecorderDefine;->CODEC_INPUT_WAIT_TIME:I

    sput v2, Lcom/gdg/recordinglib/GameRecorderDefine;->CODEC_INPUT_WAIT_CNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
