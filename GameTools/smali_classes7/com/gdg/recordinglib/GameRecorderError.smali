.class public Lcom/gdg/recordinglib/GameRecorderError;
.super Ljava/lang/Object;
.source "GameRecorderError.java"


# static fields
.field private static AUDIO_RECORD:I

.field private static AUDIO_RECORD_INIT:I

.field private static AUDIO_RECORD_READ:I

.field private static BAD_VALUE:I

.field public static CAMERA_INPUT:I

.field public static CAMERA_INVALID_OPERATION:I

.field public static CAMERA_NOT_SUPPORTED:I

.field private static CODEC_INVALID_OPERATION:I

.field private static INVALID_OPERATION:I

.field public static LOLLIPOP_MEDIA_PROJECTION_IS_NULL:I

.field public static LOLLIPOP_MEDIA_RECORD_ERROR:I

.field private static MEDIA_CODEC:I

.field private static MEDIA_MUXER:I

.field public static MIC_BAD_VALUE:I

.field public static MIC_INVALID_OPERATION:I

.field public static MIC_NO_INIT:I

.field public static MIC_PERMISSION_DENIED:I

.field public static MIC_RECORD_INPUT:I

.field public static NOT_ENOUGHT_STORAGE:I

.field public static NOT_ENOUGHT_TIME:I

.field public static NOT_FOUND_PACKAGE_NAME:I

.field public static NO_ERROR:I

.field private static NO_INIT:I

.field public static PERMISSION:I

.field public static PERMISSION_CAMERA:I

.field public static PERMISSION_CAPTUER_AUDIO_OUTPUT:I

.field private static PERMISSION_DENIED:I

.field public static PERMISSION_RECORD_AUDIO:I

.field public static PERMISSION_SURFACE_FLINGER:I

.field public static PERMISSION_WRITE_EXTERNAL_STORE:I

.field public static STAGEFRIGHT_INPUT:I

.field public static STAGEFRIGHT_INVALID_OPERATION:I

.field public static STORAGE_LIMIT_REACHED:I

.field public static SURFACE_CODEC_ERROR:I

.field public static SURFACE_INPUT:I

.field public static SYSTEM_AUDIO_BAD_VALUE:I

.field public static SYSTEM_AUDIO_INPUT:I

.field public static SYSTEM_AUDIO_INVALID_OPERATION:I

.field public static SYSTEM_AUDIO_IS_NOT_SUPPORTED:I

.field public static SYSTEM_AUDIO_NO_INIT:I

.field public static SYSTEM_AUDIO_PERMISSION_DENIED:I

.field public static TIME_LIMIT_REACHED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/16 v0, -0x3e8

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD:I

    const/16 v0, -0x44c

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD_INIT:I

    const/16 v0, -0x4b0

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD_READ:I

    const/16 v0, -0x7d0

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->MEDIA_CODEC:I

    const/16 v0, -0x960

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->CODEC_INVALID_OPERATION:I

    const/16 v0, -0xbb8

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->MEDIA_MUXER:I

    const/16 v0, -0x26

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->INVALID_OPERATION:I

    const/16 v0, -0x16

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->BAD_VALUE:I

    const/16 v0, -0x13

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->NO_INIT:I

    sput v1, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION_DENIED:I

    const/4 v0, 0x0

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    sput v1, Lcom/gdg/recordinglib/GameRecorderError;->NOT_FOUND_PACKAGE_NAME:I

    const/16 v0, -0x2710

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->SURFACE_INPUT:I

    const/16 v0, -0x2711

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->SURFACE_CODEC_ERROR:I

    const/16 v0, -0x4e20

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->MIC_RECORD_INPUT:I

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->MIC_RECORD_INPUT:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD_INIT:I

    add-int/2addr v0, v1

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->INVALID_OPERATION:I

    add-int/2addr v0, v1

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->MIC_INVALID_OPERATION:I

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->MIC_RECORD_INPUT:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD:I

    add-int/2addr v0, v1

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->BAD_VALUE:I

    add-int/2addr v0, v1

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->MIC_BAD_VALUE:I

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->MIC_RECORD_INPUT:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD:I

    add-int/2addr v0, v1

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->NO_INIT:I

    add-int/2addr v0, v1

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->MIC_NO_INIT:I

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->MIC_RECORD_INPUT:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD:I

    add-int/2addr v0, v1

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION_DENIED:I

    add-int/2addr v0, v1

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->MIC_PERMISSION_DENIED:I

    const/16 v0, -0x7530

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_INPUT:I

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_INPUT:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD:I

    add-int/2addr v0, v1

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->INVALID_OPERATION:I

    add-int/2addr v0, v1

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_INVALID_OPERATION:I

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_INPUT:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD:I

    add-int/2addr v0, v1

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->BAD_VALUE:I

    add-int/2addr v0, v1

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_BAD_VALUE:I

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_INPUT:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD:I

    add-int/2addr v0, v1

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->NO_INIT:I

    add-int/2addr v0, v1

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_NO_INIT:I

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_INPUT:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->AUDIO_RECORD:I

    add-int/2addr v0, v1

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION_DENIED:I

    add-int/2addr v0, v1

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_PERMISSION_DENIED:I

    const v0, -0x9c3f

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->SYSTEM_AUDIO_IS_NOT_SUPPORTED:I

    const v0, -0x9c40

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->CAMERA_INPUT:I

    const v0, -0x9c41

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->CAMERA_NOT_SUPPORTED:I

    const v0, -0x9c42

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->CAMERA_INVALID_OPERATION:I

    const v0, -0x15f90

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->STAGEFRIGHT_INPUT:I

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->STAGEFRIGHT_INPUT:I

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->CODEC_INVALID_OPERATION:I

    add-int/2addr v0, v1

    sget v1, Lcom/gdg/recordinglib/GameRecorderError;->INVALID_OPERATION:I

    add-int/2addr v0, v1

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->STAGEFRIGHT_INVALID_OPERATION:I

    const v0, -0x13880

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->LOLLIPOP_MEDIA_RECORD_ERROR:I

    const v0, -0x13881

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->LOLLIPOP_MEDIA_PROJECTION_IS_NULL:I

    const v0, -0xea60

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_STORAGE:I

    const v0, -0xea61

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->TIME_LIMIT_REACHED:I

    const v0, -0xea62

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_TIME:I

    const v0, -0xea63

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->STORAGE_LIMIT_REACHED:I

    const v0, -0x186a0

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION:I

    const v0, -0x186a1

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION_SURFACE_FLINGER:I

    const v0, -0x186a2

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION_CAMERA:I

    const v0, -0x186a3

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION_RECORD_AUDIO:I

    const v0, -0x186a4

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION_WRITE_EXTERNAL_STORE:I

    const v0, -0x186a5

    sput v0, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION_CAPTUER_AUDIO_OUTPUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
