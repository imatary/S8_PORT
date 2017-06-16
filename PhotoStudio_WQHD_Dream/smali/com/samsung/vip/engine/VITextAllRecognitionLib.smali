.class public Lcom/samsung/vip/engine/VITextAllRecognitionLib;
.super Lcom/samsung/vip/engine/VITextRecognitionLib;
.source "VITextAllRecognitionLib.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vip/engine/VITextRecognitionLib;-><init>()V

    return-void
.end method

.method private native VIHW_AddStroke([F[F)V
.end method

.method private native VIHW_ClearStrokes()V
.end method

.method private native VIHW_Close()V
.end method

.method private native VIHW_GenerateAndSave(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native VIHW_GetCharResultInfo()Lcom/samsung/vip/engine/VICharResultInfo;
.end method

.method private native VIHW_GetDBVersion(Ljava/lang/String;)J
.end method

.method private native VIHW_GetResult()Ljava/lang/String;
.end method

.method private native VIHW_GetResultList()[Ljava/lang/String;
.end method

.method private native VIHW_GetScoreList()[F
.end method

.method private native VIHW_GetWordInfo(I[I[I[I)V
.end method

.method private native VIHW_Init(Ljava/lang/String;IIIS)I
.end method

.method private native VIHW_Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native VIHW_Init([B[BLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native VIHW_InitWithSubDataPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native VIHW_IsValidDB(Ljava/lang/String;)Z
.end method

.method private native VIHW_Recog(I)I
.end method

.method private native VIHW_Recog(I[II)I
.end method

.method private native VIHW_SetUserDictMode(Ljava/lang/String;)I
.end method


# virtual methods
.method protected VIText_AddStroke([F[F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_AddStroke([F[F)V

    return-void
.end method

.method protected VIText_ClearStrokes()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_ClearStrokes()V

    return-void
.end method

.method protected VIText_Close()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_Close()V

    return-void
.end method

.method protected VIText_GenerateAndSave(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_GenerateAndSave(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected VIText_GetCharResultInfo()Lcom/samsung/vip/engine/VICharResultInfo;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_GetCharResultInfo()Lcom/samsung/vip/engine/VICharResultInfo;

    move-result-object v0

    return-object v0
.end method

.method protected VIText_GetDBVersion(Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_GetDBVersion(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected VIText_GetResult()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_GetResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected VIText_GetResultList()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_GetResultList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected VIText_GetScoreList()[F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_GetScoreList()[F

    move-result-object v0

    return-object v0
.end method

.method protected VIText_GetWordInfo(I)Lcom/samsung/vip/engine/VIWordInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected VIText_Init(Ljava/lang/String;IIIS)I
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_Init(Ljava/lang/String;IIIS)I

    move-result v0

    return v0
.end method

.method protected VIText_Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected VIText_Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_InitWithSubDataPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected VIText_Init([B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_Init([B[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected VIText_IsValidDB(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_IsValidDB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected VIText_Recog(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_Recog(I)I

    move-result v0

    return v0
.end method

.method protected VIText_Recog(I[II)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_Recog(I[II)I

    move-result v0

    return v0
.end method

.method protected VIText_SetUserDictMode(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VITextAllRecognitionLib;->VIHW_SetUserDictMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
